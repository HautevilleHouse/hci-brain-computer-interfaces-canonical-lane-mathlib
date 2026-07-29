import HciBrainComputerInterfacesCanonicalLaneLean.SignalProcessing

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure EEGFeaturesPackage {S : SignalProcessingPackage} where
  frequencyBands : Prop
  spatialPatterns : Prop
  temporalDynamics : Prop
  bandPower : Prop

structure EEGFeaturesEvidence {S : SignalProcessingPackage} (E : EEGFeaturesPackage S) where
  frequencyBandsClosed : E.frequencyBands
  spatialPatternsClosed : E.spatialPatterns
  temporalDynamicsClosed : E.temporalDynamics
  bandPowerClosed : E.bandPower

def EEGFeaturesClosed {S : SignalProcessingPackage} (E : EEGFeaturesPackage S) : Prop :=
  E.frequencyBands ∧ E.spatialPatterns ∧ E.temporalDynamics ∧ E.bandPower

theorem eeg_features_closed_from_evidence {S : SignalProcessingPackage} (E : EEGFeaturesPackage S) (Ev : EEGFeaturesEvidence E) : EEGFeaturesClosed E := by
  exact And.intro Ev.frequencyBandsClosed (And.intro Ev.spatialPatternsClosed (And.intro Ev.temporalDynamicsClosed Ev.bandPowerClosed))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
