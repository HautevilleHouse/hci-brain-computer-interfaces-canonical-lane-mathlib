import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure BCIFeedbackPackage where
  visualFeedback : Prop
  auditoryFeedback : Prop
  hapticFeedback : Prop
  neurofeedback : Prop
  userTraining : Prop

structure BCIFeedbackEvidence (B : BCIFeedbackPackage) where
  visualFeedbackClosed : B.visualFeedback
  auditoryFeedbackClosed : B.auditoryFeedback
  hapticFeedbackClosed : B.hapticFeedback
  neurofeedbackClosed : B.neurofeedback
  userTrainingClosed : B.userTraining

def BCIFeedbackClosed (B : BCIFeedbackPackage) : Prop :=
  B.visualFeedback ∧ B.auditoryFeedback ∧ B.hapticFeedback ∧ B.neurofeedback ∧ B.userTraining

theorem bci_feedback_closed_from_evidence
    (B : BCIFeedbackPackage) (E : BCIFeedbackEvidence B) :
    BCIFeedbackClosed B := by
  exact And.intro E.visualFeedbackClosed
    (And.intro E.auditoryFeedbackClosed
      (And.intro E.hapticFeedbackClosed
        (And.intro E.neurofeedbackClosed E.userTrainingClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse