import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure ClassificationPackage where
  linearClassifiers : Prop
  nonLinearClassifiers : Prop
  deepLearningModels : Prop
  ensembleMethods : Prop
  onlineAdaptation : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  linearClassifiersClosed : C.linearClassifiers
  nonLinearClassifiersClosed : C.nonLinearClassifiers
  deepLearningModelsClosed : C.deepLearningModels
  ensembleMethodsClosed : C.ensembleMethods
  onlineAdaptationClosed : C.onlineAdaptation

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.linearClassifiers ∧ C.nonLinearClassifiers ∧ C.deepLearningModels ∧ C.ensembleMethods ∧ C.onlineAdaptation

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) : ClassificationClosed C := by
  exact And.intro E.linearClassifiersClosed (And.intro E.nonLinearClassifiersClosed (And.intro E.deepLearningModelsClosed (And.intro E.ensembleMethodsClosed E.onlineAdaptationClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
