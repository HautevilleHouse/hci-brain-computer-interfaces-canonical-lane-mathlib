import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure OnlineBCIPackage where
  realTimeFeedback : Prop
  commandLatency : Float
  bciOperational : Prop

def OnlineBCIClosed (pkg : OnlineBCIPackage) : Prop :=
  pkg.bciOperational

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse