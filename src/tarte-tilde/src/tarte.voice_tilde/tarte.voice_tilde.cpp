#include "larynx.h"
#include "vowels.h"
#include "c74_min.h"
#include <atomic>
#include <memory>
#include <tuple>
#include <Eigen/Dense>
using namespace c74::min;

// Multichannel functions declarations
long ph_multichanneloutputs(c74::max::t_object *x, long index, long count);
long ph_inputchanged(c74::max::t_object *x, long index, long count);

using ftype = double;

class Voice
    : public object<Voice>,
      public mc_operator<>
{
private:
    static const int N_signals_in_{1};
    static const int N_signals_out_{7};

    std::shared_ptr<tarte::Larynx<ftype>> processor_;
    tarte::Articulation articulation_;

public:
    MIN_DESCRIPTION{"Self-oscillating voice model"};
    MIN_TAGS{"audio"};
    MIN_AUTHOR{"Thomas Risse"};

    // Ports
    inlet<> input{this, "(signal) sub-glottal pressure"};
    outlet<> output{this, "(multichannelsignal) output signals", "multichannelsignal"};
    outlet<> parameters_out{this, "(dict) model parameters", "dict"};
    outlet<> geometry_out{this, "(list) geometry output", "list"};

    Voice(const atom &args = {})
    {
        processor_ = std::make_shared<tarte::Larynx<ftype>>(44100, true);
        processor_->get_resonator()->set_l0(17e-2);
        articulation_.SetFromVowel(tarte::vowels::a);
        processor_->get_resonator()->SetTargetGeometryFromArticulation(articulation_);
        // processor_->set_contact_stiffness(0);
    }

    void operator()(audio_bundle input, audio_bundle output)
    {
        auto out = output.samples();
        auto in = input.samples();

        for (auto i = 0; i < output.frame_count(); ++i)
        {
            processor_->Process(in[0][i]);
            // Pressure
            out[0][i] = processor_->ReadRadiatedPressure() / ftype(3162); // -70 dB gain
            // Openings (cast to mm)
            ftype *openings = (processor_->ReadEffectiveOpenings()).data();
            out[1][i] = openings[0] * 1000;
            out[2][i] = openings[1] * 1000;
            out[3][i] = openings[2] * 1000;
            // Glottal flow (cast to cm^3/s)
            out[4][i] = processor_->ReadSupGlottalFlow();
            // Pressure drop (Pa)
            out[5][i] = processor_->ReadPressureDrop();
            out[6][i] = processor_->ReadEpsilonSav();
        }
    }

    // clang-format off
    attribute<number, threadsafe::no, limit::clamp> noise_ratio{
        this,
        "noise_ratio",
        0.f,
        range{0.f, 1.f},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_noise_ratio(args[0]);
                }
                return args;
            }
        }
    };

    attribute<int, threadsafe::no, limit::clamp> gender{
        this,
        "gender",
        0,
        range{0, 1},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_gender(args[0]);
                }
                return args;
            }
        }
    };

    attribute<bool, threadsafe::no> yielding_walls{
        this,
        "yielding_walls",
        true,
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->get_resonator()->set_yielding_walls(args[0]);
                }
                return args;
            }
        }
    };

    attribute<int, threadsafe::no, limit::clamp> NinterpVowel{
        this,
        "NinterpVowel",
        4,
        range{2, 5}
    };

    attribute<number, threadsafe::no, limit::clamp> epsilon_smooth{
        this,
        "Smoothing epsilon for channel closure",
        1e-4,
        range{1e-6, 1e-2},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_epsilon_smooth(args[0]);
                }
                return args;
            }
        }
    };

    attribute<number, threadsafe::no, limit::clamp> lambda_sav{
        this,
        "SAV drift control parameter",
        10,
        range{0, 1e4},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_lambda_sav(args[0]);
                }
                return args;
            }
        }
    };

    message<> dspsetup{this, "dspsetup",
        MIN_FUNCTION{
            float sr = args[0];
            if (processor_)
                processor_->DspSetup(sr, &articulation_);
            return {};
        }
    };

    message<> listin { this, "list",
        MIN_FUNCTION {
            if (processor_->get_resonator()){
                if (args.size() == processor_->get_resonator()->get_N()+1) {
                    std::vector<ftype> areas;
                    areas.reserve(args.size());
                    for (auto& a : args)
                        areas.push_back(static_cast<ftype>(a) * 1e-4);
                    processor_->get_resonator()->SetTargetGeometry(areas.data(), areas.size());
                } else if (args.size() == 2){
                    articulation_.SetFromFormants(args[0], args[1], NinterpVowel);
                    processor_->get_resonator()->SetTargetGeometryFromArticulation(articulation_);
                } else {
                    cout << "Wrong number of areas or formant frequencies should be" << processor_->get_resonator()->get_N()+1 << endl;
                }
            }
            return {};
        }
    };

    message<> get_articulation { this, "get_articulation",
        MIN_FUNCTION {
            if (args.empty()) return {};

            std::vector<ftype> in;
            in.reserve(args.size());
            for (auto& a : args)
                in.push_back(static_cast<ftype>(a));

            std::vector<ftype> out(args.size());
            articulation_.getAreas(in.data(), out.data(), args.size());

            atoms result;
            for (auto val : out)
                result.push_back(atom(val));
            geometry_out.send(result);
            return {};
        }   
    };

    message<> set_lpf_cutoff_geometry { this, "lpf_cutoff",
        MIN_FUNCTION {
            if (processor_->get_resonator())
                processor_->get_resonator()->set_lp_frequencies(args[0]);
            return {};
        }
    };

    message<> set_masses { this, "masses",
        MIN_FUNCTION {
            if (processor_){
                if (args.size() == 3) {
                processor_->set_masses(args[0], args[1], args[2]);
                }else {
                    cout << "You must provide 3 masses (lower, upper, body)" << endl;
                }
            }   
            return {};
        }
    };

    message<> set_stiffnesses { this, "stiffnesses",
        MIN_FUNCTION {
            if (processor_){
                if (args.size() == 4) {
                processor_->set_stiffnesses(args[0], args[1], args[2], args[3]);
                }else {
                    cout << "You must provide 4 stiffnesses (lower, upper, body, coupling)" << endl;
                }
            }
            return {};
        }
    };

    message<> set_rest_positions { this, "rest_positions",
        MIN_FUNCTION {
            if (processor_){
                if (args.size() == 3) {
                processor_->set_rest_positions(args[0], args[1], args[2]);
                }else {
                    cout << "You must provide 3 positions (lower, upper, body)" << endl;
                }
            }
            return {};
        }
    };

    message<> set_rest_muscles_activation { this, "muscles_activation",
        MIN_FUNCTION {
            if (processor_){
                if (args.size() == 3) {
                processor_->set_muscles_activation(args[0], args[1], args[2]);
                }else {
                    cout << "You must provide 3 values (Cricothyroid, Thyroarytenoid, lateral Cricoarytenoid)" << endl;
                }
            }
            return {};
        }
    };

    message<> print_params { this, "print_params",
    MIN_FUNCTION {
        if (!processor_) return {};

        auto send_scalar = [this](const char* label, ftype val) {
            atoms msg { label, val };
            parameters_out.send(msg);
        };
        auto send_vec3 = [this](const char* label, Eigen::Vector<ftype, 3> vec) {
            atoms msg { label, vec[0], vec[1], vec[2] };
            parameters_out.send(msg);
        };
        auto send_vec4 = [this](const char* label, Eigen::Vector<ftype, 4> vec) {
            atoms msg { label, vec[0], vec[1], vec[2], vec[3] };
            parameters_out.send(msg);
        };
        // Left fold
        send_vec3("left_masses", processor_->get_masses(tarte::kLeft) * 1e6);                       // mg
        send_vec3("left_rest_positions", processor_->get_rest_positions(tarte::kLeft) * 1e3);       // mm
        send_vec3("left_lengths", processor_->get_lengths(tarte::kLeft) * 1e3);                     // mm
        send_vec3("left_thicknesses", processor_->get_thicknesses(tarte::kLeft) * 1e3);             // mm
        send_vec4("left_stiffnesses", processor_->get_stiffnesses(tarte::kLeft));                   // N/m
        send_scalar("left_eta_stiffness", processor_->get_eta_stiffness(tarte::kLeft) * 1e-6);      // mm-2

        // Right fold
        send_vec3("right_masses", processor_->get_masses(tarte::kRight) * 1e6);                     // mg
        send_vec3("right_rest_positions", processor_->get_rest_positions(tarte::kRight) * 1e3);     // mm
        send_vec3("right_lengths", processor_->get_lengths(tarte::kRight) * 1e3);                   // mm
        send_vec3("right_thicknesses", processor_->get_thicknesses(tarte::kRight) * 1e3);           // mm
        send_vec4("right_stiffnesses", processor_->get_stiffnesses(tarte::kRight));                 // N/m
        send_scalar("right_eta_stiffness", processor_->get_eta_stiffness(tarte::kRight) * 1e-6);    // mm-2

        // Contact
        send_scalar("contact_stiffness", processor_->get_contact_stiffness());                      // N/m
        send_scalar("alpha_contact_stiffness", processor_->get_alpha_contact_stiffness());          // no units

        // Fluid
        send_scalar("c0", processor_->get_c0());                                                    // m/s
        send_scalar("rho0", processor_->get_rho0());                                                // kg.m-3
        send_scalar("kt", processor_->get_kt());                                                    // no units

        // Solver
        send_scalar("lambda_sav", processor_->get_lambda_sav()); // s-1

        return {};
        }
    };
    
    static constexpr int get_N_signals_out(){
        return N_signals_out_;
    }

    message<> maxclass_setup{this, "maxclass_setup",
        MIN_FUNCTION{
            c74::max::t_class *c = args[0];
            c74::max::class_addmethod(c, (c74::max::method)ph_multichanneloutputs,
                                        "multichanneloutputs", c74::max::A_CANT, 0);
            c74::max::class_addmethod(c, (c74::max::method)ph_inputchanged, "inputchanged",
                                        c74::max::A_CANT, 0);
            return {};
        }
    };
};

MIN_EXTERNAL(Voice);

// Multichannel functions definitions
long ph_multichanneloutputs(c74::max::t_object *x, long index, long count) {
  minwrap<Voice> *ob = (minwrap<Voice> *)(x);
  return ob->m_min_object.get_N_signals_out();
  
}

long ph_inputchanged(c74::max::t_object *x, long index, long count) {
  return 1;
}
