#include "larynx.h"
#include "c74_min.h"
#include <atomic>
#include <memory>
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
        return processor_->ReadRadiatedPressure();
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
};

MIN_EXTERNAL(Voice);
