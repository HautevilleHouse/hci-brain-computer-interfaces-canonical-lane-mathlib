import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure NeurofeedbackProtocol {M : AdmissibleClass} where
  feedbackSignal : Type u
  trainingSessions : Prop
  userEngagement : Prop
  performanceImprovement : Prop
  safetyConstraints : Prop

structure NeurofeedbackEvidence {M : AdmissibleClass} (N : NeurofeedbackProtocol) where
  trainingSessionsClosed : N.trainingSessions
  userEngagementClosed : N.userEngagement
  performanceImprovementClosed : N.performanceImprovement
  safetyConstraintsClosed : N.safetyConstraints

def NeurofeedbackClosed {M : AdmissibleClass} (N : NeurofeedbackProtocol) : Prop :=
  N.trainingSessions ∧ N.userEngagement ∧ N.performanceImprovement ∧ N.safetyConstraints

theorem neurofeedback_closed_from_evidence
    {M : AdmissibleClass} (N : NeurofeedbackProtocol) (E : NeurofeedbackEvidence N) :
    NeurofeedbackClosed N := by
  exact And.intro E.trainingSessionsClosed
    (And.intro E.userEngagementClosed
      (And.intro E.performanceImprovementClosed E.safetyConstraintsClosed))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse