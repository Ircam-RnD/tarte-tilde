#include "larynx.h"
#include "c74_min.h"
#include <atomic>
#include <memory>
#include <tuple>
#include <Eigen/Dense>
using namespace c74::min;

class Voice
    : public object<Voice>,
      public sample_operator<1, 1>
{
private:
    std::shared_ptr<tarte::Larynx<double>> processor_;
    tarte::Articulation articulation;

public:
    MIN_DESCRIPTION{"Self-oscillating voice model"};
    MIN_TAGS{"audio"};
    MIN_AUTHOR{"Thomas Risse"};

    // Ports
    inlet<> input{this, "(signal) sub-glottal pressure"};
    outlet<> output{this, "(signal) radiated pressure", "signal"};
    outlet<> folds_output{this, "(list) folds modal characteristics", "list"};

    Voice(const atom &args = {})
    {
        processor_ = std::make_shared<tarte::Larynx<double>>(44100);
        processor_->get_resonator()->set_l0(17e-2);
        processor_->get_resonator()->SetConstantSection(25e-4);
    }

    sample
    operator()(sample subglottal_pressure)
    {
        processor_->Process(subglottal_pressure);
        return processor_->ReadRadiatedPressure() / double(3162); // -70 dB gain
    }

    // clang-format off
    attribute<number, threadsafe::no, limit::clamp> eta_stiffness{
        this,
        "eta stifness vocal folds",
        1e6,
        range{0, 1e12},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_eta_stiffness(args[0]);
                }
                return args;
            }
        }
    };

    attribute<number, threadsafe::no, limit::clamp> lambda_sav{
        this,
        "SAV drift control parameters",
        1e3,
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
                processor_->DspSetup(sr);
            return {};
        }
    };

    message<> listin { this, "list",
        MIN_FUNCTION {
            if (processor_->get_resonator()){
                if (args.size() == processor_->get_resonator()->get_N()+1) {
                    std::vector<double> areas;
                    areas.reserve(args.size());
                    for (auto& a : args)
                        areas.push_back(static_cast<double>(a));
                    processor_->get_resonator()->SetTargetGeometry(areas.data(), areas.size());
                } else if (args.size() == 2){
                    articulation.SetFromFormants(args[0], args[1], 5);
                    processor_->get_resonator()->SetTargetGeometryFromArticulation(articulation);
                } else {
                    cout << "Wrong number of areas or formant frequencies" << endl;
                }
            }
            return {};
        }
    };

    // message<> get_modal_characteristics_folds { this, "folds_modes",
    //     MIN_FUNCTION {
    //         if (processor_){
    //             auto [eigen_frequencies, zeta, eigen_vectors] = processor_->GetModalCharacteristics();
    //             atoms eigen_frequencies_atoms, zeta_atoms, eigen_vectors_atoms;
    //             eigen_frequencies_atoms.reserve(eigen_frequencies.size());
    //             zeta_atoms.reserve(zeta.size());
    //             eigen_vectors_atoms.reserve(eigen_vectors.col(0).size());

    //             for (const auto& f : eigen_frequencies)
    //                 eigen_frequencies_atoms.push_back(f);

    //             for (const auto& d : zeta)
    //                 zeta_atoms.push_back(d);
                
    //             atoms freq_msg;
    //             freq_msg.push_back("frequencies");
    //             freq_msg.insert(freq_msg.end(),
    //                             eigen_frequencies_atoms.begin(),
    //                             eigen_frequencies_atoms.end());
    //             folds_output.send(freq_msg);
    //             atoms zeta_msg;
    //             zeta_msg.push_back("zetas");
    //             zeta_msg.insert(zeta_msg.end(),
    //                             zeta_atoms.begin(),
    //                             zeta_atoms.end());
    //             folds_output.send(zeta_msg);

    //             for (std::size_t i = 0; i<3; i++) {
    //                 auto vec = eigen_vectors.col(i);
    //                 for (const auto& v : vec)
    //                     eigen_vectors_atoms.push_back(v);

    //                 atoms vec_msg;
    //                 vec_msg.push_back("vector");
    //                 vec_msg.push_back(i);
    //                 vec_msg.insert(vec_msg.end(),
    //                             eigen_vectors_atoms.begin(),
    //                             eigen_vectors_atoms.end());
    //                 folds_output.send(vec_msg);

    //                 eigen_vectors_atoms.clear();
    //             }
    //             return {};
    //         }
    //         return {};
    //     }
    // };

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

        auto send_scalar = [this](const char* label, double val) {
            atoms msg { label, val };
            folds_output.send(msg);
        };
        auto send_vec3 = [this](const char* label, Eigen::Vector<double, 3> vec) {
            atoms msg { label, vec[0], vec[1], vec[2] };
            folds_output.send(msg);
        };
        auto send_vec4 = [this](const char* label, Eigen::Vector<double, 4> vec) {
            atoms msg { label, vec[0], vec[1], vec[2], vec[3] };
            folds_output.send(msg);
        };

        // Left fold
        send_vec3("left_masses",          processor_->get_masses(tarte::kLeft));
        send_vec3("left_rest_positions",  processor_->get_rest_positions(tarte::kLeft));
        send_vec3("left_lengths",         processor_->get_lengths(tarte::kLeft));
        send_vec3("left_thicknesses",     processor_->get_thicknesses(tarte::kLeft));
        send_vec4("left_stiffnesses",     processor_->get_stiffnesses(tarte::kLeft));
        send_scalar("left_eta_stiffness", processor_->get_eta_stiffness(tarte::kLeft));

        // Right fold
        send_vec3("right_masses",          processor_->get_masses(tarte::kRight));
        send_vec3("right_rest_positions",  processor_->get_rest_positions(tarte::kRight));
        send_vec3("right_lengths",         processor_->get_lengths(tarte::kRight));
        send_vec3("right_thicknesses",     processor_->get_thicknesses(tarte::kRight));
        send_vec4("right_stiffnesses",     processor_->get_stiffnesses(tarte::kRight));
        send_scalar("right_eta_stiffness", processor_->get_eta_stiffness(tarte::kRight));

        // Contact
        send_scalar("contact_stiffness",       processor_->get_contact_stiffness());
        send_scalar("alpha_contact_stiffness",  processor_->get_alpha_contact_stiffness());
        send_scalar("eta_contact_stiffness",    processor_->get_eta_contact_stiffness());

        // Fluid
        send_scalar("c0",   processor_->get_c0());
        send_scalar("rho0", processor_->get_rho0());
        send_scalar("kt",   processor_->get_kt());

        // Solver
        send_scalar("lambda_sav", processor_->get_lambda_sav());

        return {};
    }
};
};

MIN_EXTERNAL(Voice);
