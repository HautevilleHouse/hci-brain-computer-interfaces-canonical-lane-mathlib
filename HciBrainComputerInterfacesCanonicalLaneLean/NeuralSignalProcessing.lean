import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure NeuralSignalProcessingPackage where
  signalAcquisition : Prop
  preprocessing : Prop
  featureExtraction : Prop
  classification : Prop
  realTimeConstraints : Prop

structure NeuralSignalProcessingEvidence (N : NeuralSignalProcessingPackage) where
  signalAcquisitionClosed : N.signalAcquisition
  preprocessingClosed : N.preprocessing
  featureExtractionClosed : N.featureExtraction
  classificationClosed : N.classification
  realTimeConstraintsClosed : N.realTimeConstraints

def NeuralSignalProcessingClosed (N : NeuralSignalProcessingPackage) : Prop :=
  N.signalAcquisition ∧ N.preprocessing ∧ N.featureExtraction ∧ N.classification ∧ N.realTimeConstraints

theorem neural_signal_processing_closed_from_evidence
    (N : NeuralSignalProcessingPackage) (E : NeuralSignalProcessingEvidence N) :
    NeuralSignalProcessingClosed N := by
  exact And.intro E.signalAcquisitionClosed
    (And.intro E.preprocessingClosed
      (And.intro E.featureExtractionClosed
        (And.intro E.classificationClosed E.realTimeConstraintsClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse