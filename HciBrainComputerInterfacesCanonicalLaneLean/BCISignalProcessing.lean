import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure SignalAcquisition {M : AdmissibleClass} where
  electrodeConfig : Type u
  impedanceTested : Prop
  samplingRate : Prop
  signalBandwidth : Prop
  artifactRejection : Prop

structure SignalAcquisitionEvidence {M : AdmissibleClass} (S : SignalAcquisition) where
  impedanceTestedClosed : S.impedanceTested
  samplingRateClosed : S.samplingRate
  signalBandwidthClosed : S.signalBandwidth
  artifactRejectionClosed : S.artifactRejection

def SignalAcquisitionClosed {M : AdmissibleClass} (S : SignalAcquisition) : Prop :=
  S.impedanceTested ∧ S.samplingRate ∧ S.signalBandwidth ∧ S.artifactRejection

theorem signal_acquisition_closed_from_evidence
    {M : AdmissibleClass} (S : SignalAcquisition) (E : SignalAcquisitionEvidence S) :
    SignalAcquisitionClosed S := by
  exact And.intro E.impedanceTestedClosed
    (And.intro E.samplingRateClosed
      (And.intro E.signalBandwidthClosed E.artifactRejectionClosed))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse