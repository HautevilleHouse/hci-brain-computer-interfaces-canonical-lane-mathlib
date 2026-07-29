import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure ApplicationsPackage where
  motorImagery : Prop
  p300Speller : Prop
  steadyStateEvokedPotentials : Prop
  cognitiveMonitoring : Prop
  neurorehabilitation : Prop

structure ApplicationsEvidence (A : ApplicationsPackage) where
  motorImageryClosed : A.motorImagery
  p300SpellerClosed : A.p300Speller
  steadyStateEvokedPotentialsClosed : A.steadyStateEvokedPotentials
  cognitiveMonitoringClosed : A.cognitiveMonitoring
  neurorehabilitationClosed : A.neurorehabilitation

def ApplicationsClosed (A : ApplicationsPackage) : Prop :=
  A.motorImagery ∧ A.p300Speller ∧ A.steadyStateEvokedPotentials ∧ A.cognitiveMonitoring ∧ A.neurorehabilitation

theorem applications_closed_from_evidence (A : ApplicationsPackage) (E : ApplicationsEvidence A) : ApplicationsClosed A := by
  exact And.intro E.motorImageryClosed (And.intro E.p300SpellerClosed (And.intro E.steadyStateEvokedPotentialsClosed (And.intro E.cognitiveMonitoringClosed E.neurorehabilitationClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
