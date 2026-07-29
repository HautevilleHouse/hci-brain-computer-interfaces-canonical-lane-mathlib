import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure FeatureExtractionPackage where
  timeDomainFeatures : Prop
  frequencyDomainFeatures : Prop
  waveletFeatures : Prop
  spatialFilters : Prop
  dimensionalityReduction : Prop

structure FeatureExtractionEvidence (F : FeatureExtractionPackage) where
  timeDomainFeaturesClosed : F.timeDomainFeatures
  frequencyDomainFeaturesClosed : F.frequencyDomainFeatures
  waveletFeaturesClosed : F.waveletFeatures
  spatialFiltersClosed : F.spatialFilters
  dimensionalityReductionClosed : F.dimensionalityReduction

def FeatureExtractionClosed (F : FeatureExtractionPackage) : Prop :=
  F.timeDomainFeatures ∧ F.frequencyDomainFeatures ∧ F.waveletFeatures ∧ F.spatialFilters ∧ F.dimensionalityReduction

theorem feature_extraction_closed_from_evidence (F : FeatureExtractionPackage) (E : FeatureExtractionEvidence F) : FeatureExtractionClosed F := by
  exact And.intro E.timeDomainFeaturesClosed (And.intro E.frequencyDomainFeaturesClosed (And.intro E.waveletFeaturesClosed (And.intro E.spatialFiltersClosed E.dimensionalityReductionClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
