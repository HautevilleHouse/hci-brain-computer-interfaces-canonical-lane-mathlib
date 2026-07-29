import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure FeedbackLoopPackage where
  stimulusPresentation : Prop
  userTraining : Prop
  errorRelatedPotentials : Prop
  adaptiveInterfaces : Prop
  closedLoopControl : Prop

structure FeedbackLoopEvidence (F : FeedbackLoopPackage) where
  stimulusPresentationClosed : F.stimulusPresentation
  userTrainingClosed : F.userTraining
  errorRelatedPotentialsClosed : F.errorRelatedPotentials
  adaptiveInterfacesClosed : F.adaptiveInterfaces
  closedLoopControlClosed : F.closedLoopControl

def FeedbackLoopClosed (F : FeedbackLoopPackage) : Prop :=
  F.stimulusPresentation ∧ F.userTraining ∧ F.errorRelatedPotentials ∧ F.adaptiveInterfaces ∧ F.closedLoopControl

theorem feedback_loop_closed_from_evidence (F : FeedbackLoopPackage) (E : FeedbackLoopEvidence F) : FeedbackLoopClosed F := by
  exact And.intro E.stimulusPresentationClosed (And.intro E.userTrainingClosed (And.intro E.errorRelatedPotentialsClosed (And.intro E.adaptiveInterfacesClosed E.closedLoopControlClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
