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
};

MIN_EXTERNAL(Voice);
