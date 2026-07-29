import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure FilterPackage where
  lowPassCutoff : Float
  highPassCutoff : Float
  notchFilterApplied : Prop
  artifactRejectionOk : Prop

def SignalPreprocessingClosed (pkg : FilterPackage) : Prop :=
  pkg.notchFilterApplied ∧ pkg.artifactRejectionOk

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse