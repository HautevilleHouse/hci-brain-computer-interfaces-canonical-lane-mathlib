import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure MotorImageryModel {M : AdmissibleClass} where
  muBetaRhythm : Prop
  featureExtraction : Type u
  classifierAccuracy : Prop
  crossValidation : Prop
  onlineLatency : Prop

structure MotorImageryEvidence {M : AdmissibleClass} (F : MotorImageryModel) where
  muBetaRhythmClosed : F.muBetaRhythm
  classifierAccuracyClosed : F.classifierAccuracy
  crossValidationClosed : F.crossValidation
  onlineLatencyClosed : F.onlineLatency

def MotorImageryDecodingClosed {M : AdmissibleClass} (F : MotorImageryModel) : Prop :=
  F.muBetaRhythm ∧ F.classifierAccuracy ∧ F.crossValidation ∧ F.onlineLatency

theorem motor_imagery_decoding_closed_from_evidence
    {M : AdmissibleClass} (F : MotorImageryModel) (E : MotorImageryEvidence F) :
    MotorImageryDecodingClosed F := by
  exact And.intro E.muBetaRhythmClosed
    (And.intro E.classifierAccuracyClosed
      (And.intro E.crossValidationClosed E.onlineLatencyClosed))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse