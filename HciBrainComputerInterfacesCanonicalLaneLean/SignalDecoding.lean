import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure SignalDecodingPackage where
  decodingAlgorithm : Prop
  errorCorrection : Prop
  latencyRequirement : Prop
  robustnessToNoise : Prop

structure SignalDecodingEvidence (D : SignalDecodingPackage) where
  decodingAlgorithmClosed : D.decodingAlgorithm
  errorCorrectionClosed : D.errorCorrection
  latencyRequirementClosed : D.latencyRequirement
  robustnessToNoiseClosed : D.robustnessToNoise

def SignalDecodingClosed (D : SignalDecodingPackage) : Prop :=
  D.decodingAlgorithm ∧ D.errorCorrection ∧ D.latencyRequirement ∧ D.robustnessToNoise

theorem signal_decoding_closed_from_evidence
    (D : SignalDecodingPackage) (E : SignalDecodingEvidence D) :
    SignalDecodingClosed D := by
  exact And.intro E.decodingAlgorithmClosed
    (And.intro E.errorCorrectionClosed
      (And.intro E.latencyRequirementClosed E.robustnessToNoiseClosed))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse