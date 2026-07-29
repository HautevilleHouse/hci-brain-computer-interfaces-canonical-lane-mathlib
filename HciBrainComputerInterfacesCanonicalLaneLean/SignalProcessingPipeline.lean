import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure SignalProcessingPipeline (A : AdmissibleClass) where
  rawSignalAcquisition : Prop
  preprocessingFiltering : Prop
  artifactRemoval : Prop
  featureExtraction : Prop
  patternClassification : Prop

structure SignalProcessingEvidence (A : AdmissibleClass) (P : SignalProcessingPipeline A) where
  rawSignalAcquisitionClosed : P.rawSignalAcquisition
  preprocessingFilteringClosed : P.preprocessingFiltering
  artifactRemovalClosed : P.artifactRemoval
  featureExtractionClosed : P.featureExtraction
  patternClassificationClosed : P.patternClassification

def SignalProcessingPipelineClosed (A : AdmissibleClass) (P : SignalProcessingPipeline A) : Prop :=
  P.rawSignalAcquisition ∧ P.preprocessingFiltering ∧ P.artifactRemoval ∧ P.featureExtraction ∧ P.patternClassification

theorem signal_processing_pipeline_closed_from_evidence (A : AdmissibleClass) (P : SignalProcessingPipeline A) (E : SignalProcessingEvidence A P) :
    SignalProcessingPipelineClosed A P := by
  exact And.intro E.rawSignalAcquisitionClosed
    (And.intro E.preprocessingFilteringClosed
      (And.intro E.artifactRemovalClosed
        (And.intro E.featureExtractionClosed E.patternClassificationClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
