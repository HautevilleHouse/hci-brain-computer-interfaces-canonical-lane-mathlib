import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure ClassificationAlgorithmsPackage where
  linearClassifiers : Prop
  nonlinearClassifiers : Prop
  deepLearningMethods : Prop
  ensembleMethods : Prop
  evaluationMetrics : Prop

structure ClassificationAlgorithmsEvidence (C : ClassificationAlgorithmsPackage) where
  linearClassifiersClosed : C.linearClassifiers
  nonlinearClassifiersClosed : C.nonlinearClassifiers
  deepLearningMethodsClosed : C.deepLearningMethods
  ensembleMethodsClosed : C.ensembleMethods
  evaluationMetricsClosed : C.evaluationMetrics

def ClassificationAlgorithmsClosed (C : ClassificationAlgorithmsPackage) : Prop :=
  C.linearClassifiers ∧ C.nonlinearClassifiers ∧ C.deepLearningMethods ∧ C.ensembleMethods ∧ C.evaluationMetrics

theorem classification_algorithms_closed_from_evidence
    (C : ClassificationAlgorithmsPackage) (E : ClassificationAlgorithmsEvidence C) :
    ClassificationAlgorithmsClosed C := by
  exact And.intro E.linearClassifiersClosed
    (And.intro E.nonlinearClassifiersClosed
      (And.intro E.deepLearningMethodsClosed
        (And.intro E.ensembleMethodsClosed E.evaluationMetricsClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse