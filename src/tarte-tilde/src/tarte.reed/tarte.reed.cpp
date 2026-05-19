#include "single_reed.h"
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

class Reed
    : public object<Reed>,
      public mc_operator<>
{
private:
    static const int N_signals_in_{1};
    static const int N_signals_out_{6};

    std::shared_ptr<tarte::SingleReed<ftype>> processor_;

public:
    MIN_DESCRIPTION{"Self-oscillating single reed instrument model"};
    MIN_TAGS{"audio"};
    MIN_AUTHOR{"Thomas Risse"};

    // Ports
    inlet<> input{this, "(signal) mouth pressure"};
    outlet<> output{this, "(multichannelsignal) output signals", "multichannelsignal"};
    outlet<> parameters_out{this, "(dict) model parameters", "dict"};

    Reed(const atom &args = {})
    {
        processor_ = std::make_shared<tarte::SingleReed<ftype>>(44100);
        processor_->get_resonator()->set_l0(0.66);
        processor_->get_resonator()->SetConstantSection(M_PI * 1e-4);
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
            out[1][i] = processor_->ReadEffectiveOpening() * 1e4;         // cm^2
            out[2][i] = processor_->ReadDisplacement() * 1e3;             // mm
            out[3][i] = processor_->ReadMouthpieceFlow() * 1e6;           // cm^3 / s
            out[4][i] = processor_->ReadPressureDrop() * 1e-3;            // kPa
            out[5][i] = processor_->ReadAuxiliaryVariable();              //
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
                    cout << processor_->get_noise_ratio() << endl;
                }
                return args;
            }
        }
    };

    attribute<number, threadsafe::no, limit::clamp> contact_stiffness{
        this,
        "contact_stiffness",
        1e13,
        range{0, 1e14},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_contact_stiffness(args[0]);
                }
                return args;
            }
        }
    };

    attribute<number, threadsafe::no, limit::clamp> epsilon_smooth{
        this,
        "epsilon_smooth",
        1e-7,
        range{1e-8, 1e-3},
        setter{MIN_FUNCTION{
                if (processor_){
                    processor_->set_epsilon_smooth(args[0]);
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
                processor_->get_resonator()->SetConstantSection(M_PI * 1e-4);
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

MIN_EXTERNAL(Reed);

// Multichannel functions definitions
long ph_multichanneloutputs(c74::max::t_object *x, long index, long count) {
  minwrap<Reed> *ob = (minwrap<Reed> *)(x);
  return ob->m_min_object.get_N_signals_out();
  
}

long ph_inputchanged(c74::max::t_object *x, long index, long count) {
  return 1;
}
