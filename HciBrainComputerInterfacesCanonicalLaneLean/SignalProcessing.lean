import HciBrainComputerInterfacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure SignalProcessingPackage where
  rawSignal : Type u
  preprocessingFilter : Type v
  featureExtraction : Type w
  qualityMetric : Prop
  artifactRejection : Prop

structure SignalProcessingEvidence (S : SignalProcessingPackage) where
  qualityMetricClosed : S.qualityMetric
  artifactRejectionClosed : S.artifactRejection

def SignalProcessingClosed (S : SignalProcessingPackage) : Prop :=
  S.qualityMetric ∧ S.artifactRejection

theorem signal_processing_closed_from_evidence (S : SignalProcessingPackage) (E : SignalProcessingEvidence S) : SignalProcessingClosed S := by
  exact And.intro E.qualityMetricClosed E.artifactRejectionClosed

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
