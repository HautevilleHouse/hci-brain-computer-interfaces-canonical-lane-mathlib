import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure EEGChannelPackage where
  electrodePlacement : String
  samplingRate : Nat
  impedanceOk : Prop
  signalAcquisitionMode : String

def BrainSignalAcquisitionClosed (pkg : EEGChannelPackage) : Prop :=
  pkg.impedanceOk

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse