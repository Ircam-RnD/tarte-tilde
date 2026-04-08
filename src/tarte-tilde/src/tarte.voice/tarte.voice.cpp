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
    inlet<> input{this, "(signal) sub glottal pressure"};
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
    message<> listin { this, "list",
        MIN_FUNCTION {
            if (args.size() == processor_->get_resonator()->get_N()+1) {
                processor_->get_resonator()->SetTargetGeometry(args.data(), args.size());
            } else if (args.size() == 2){
                articulation.SetFromFormants(args[0], args[1]);
                processor_->get_resonator()->SetTargetGeometryFromArticulation(articulation);
            } else {
                cout << "Wrong number of areas or formant frequencies" << endl;
            }
            return {};
        }
    };

    message<> set_lpf_cutoff_geometry { this, "lpf_cutoff",
        MIN_FUNCTION {
            processor_->get_resonator()->set_lp_frequencies(args[0]);
            return {};
        }
    };
};

MIN_EXTERNAL(Voice);
