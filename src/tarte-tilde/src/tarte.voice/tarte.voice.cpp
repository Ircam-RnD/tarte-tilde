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

    message<> get_modal_characteristics_folds { this, "folds_modes",
        MIN_FUNCTION {
            if (processor_){
                auto [eigen_frequencies, zeta, eigen_vectors] = processor_->GetModalCharacteristics();
                atoms eigen_frequencies_atoms, zeta_atoms, eigen_vectors_atoms;
                eigen_frequencies_atoms.reserve(eigen_frequencies.size());
                zeta_atoms.reserve(zeta.size());
                eigen_vectors_atoms.reserve(eigen_vectors.col(0).size());

                for (const auto& f : eigen_frequencies)
                    eigen_frequencies_atoms.push_back(f);

                for (const auto& d : zeta)
                    zeta_atoms.push_back(d);
                
                atoms freq_msg;
                freq_msg.push_back("frequencies");
                freq_msg.insert(freq_msg.end(),
                                eigen_frequencies_atoms.begin(),
                                eigen_frequencies_atoms.end());
                folds_output.send(freq_msg);
                atoms zeta_msg;
                zeta_msg.push_back("zetas");
                zeta_msg.insert(zeta_msg.end(),
                                zeta_atoms.begin(),
                                zeta_atoms.end());
                folds_output.send(zeta_msg);

                for (std::size_t i = 0; i<3; i++) {
                    auto vec = eigen_vectors.col(i);
                    for (const auto& v : vec)
                        eigen_vectors_atoms.push_back(v);

                    atoms vec_msg;
                    vec_msg.push_back("vector");
                    vec_msg.push_back(i);
                    vec_msg.insert(vec_msg.end(),
                                eigen_vectors_atoms.begin(),
                                eigen_vectors_atoms.end());
                    folds_output.send(vec_msg);

                    eigen_vectors_atoms.clear();
                }
                return {};
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
