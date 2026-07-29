import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure NeuralDecoder (A : AdmissibleClass) where
  spikeDetection : Prop
  spikeSorting : Prop
  neuralPopulationModel : Prop
  decodingAlgorithm : Prop
  decodedIntention : Prop

structure NeuralDecoderEvidence (A : AdmissibleClass) (D : NeuralDecoder A) where
  spikeDetectionClosed : D.spikeDetection
  spikeSortingClosed : D.spikeSorting
  neuralPopulationModelClosed : D.neuralPopulationModel
  decodingAlgorithmClosed : D.decodingAlgorithm
  decodedIntentionClosed : D.decodedIntention

def NeuralDecoderClosed (A : AdmissibleClass) (D : NeuralDecoder A) : Prop :=
  D.spikeDetection ∧ D.spikeSorting ∧ D.neuralPopulationModel ∧ D.decodingAlgorithm ∧ D.decodedIntention

theorem neural_decoder_closed_from_evidence (A : AdmissibleClass) (D : NeuralDecoder A) (E : NeuralDecoderEvidence A D) :
    NeuralDecoderClosed A D := by
  exact And.intro E.spikeDetectionClosed
    (And.intro E.spikeSortingClosed
      (And.intro E.neuralPopulationModelClosed
        (And.intro E.decodingAlgorithmClosed E.decodedIntentionClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
