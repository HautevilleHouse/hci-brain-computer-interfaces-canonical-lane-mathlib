import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure SignalAcquisitionPackage where
  electrodePlacement : Prop
  impedanceControl : Prop
  amplification : Prop
  filtering : Prop
  samplingRate : Prop

structure SignalAcquisitionEvidence (S : SignalAcquisitionPackage) where
  electrodePlacementClosed : S.electrodePlacement
  impedanceControlClosed : S.impedanceControl
  amplificationClosed : S.amplification
  filteringClosed : S.filtering
  samplingRateClosed : S.samplingRate

def SignalAcquisitionClosed (S : SignalAcquisitionPackage) : Prop :=
  S.electrodePlacement ∧ S.impedanceControl ∧ S.amplification ∧ S.filtering ∧ S.samplingRate

theorem signal_acquisition_closed_from_evidence (S : SignalAcquisitionPackage) (E : SignalAcquisitionEvidence S) : SignalAcquisitionClosed S := by
  exact And.intro E.electrodePlacementClosed (And.intro E.impedanceControlClosed (And.intro E.amplificationClosed (And.intro E.filteringClosed E.samplingRateClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
