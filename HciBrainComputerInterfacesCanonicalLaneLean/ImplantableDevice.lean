import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure ImplantableDevice (A : AdmissibleClass) where
  electrodeArrayDesign : Prop
  biocompatibility : Prop
  wirelessCommunication : Prop
  powerManagement : Prop
  surgicalPlacement : Prop

structure ImplantableDeviceEvidence (A : AdmissibleClass) (I : ImplantableDevice A) where
  electrodeArrayDesignClosed : I.electrodeArrayDesign
  biocompatibilityClosed : I.biocompatibility
  wirelessCommunicationClosed : I.wirelessCommunication
  powerManagementClosed : I.powerManagement
  surgicalPlacementClosed : I.surgicalPlacement

def ImplantableDeviceClosed (A : AdmissibleClass) (I : ImplantableDevice A) : Prop :=
  I.electrodeArrayDesign ∧ I.biocompatibility ∧ I.wirelessCommunication ∧ I.powerManagement ∧ I.surgicalPlacement

theorem implantable_device_closed_from_evidence (A : AdmissibleClass) (I : ImplantableDevice A) (E : ImplantableDeviceEvidence A I) :
    ImplantableDeviceClosed A I := by
  exact And.intro E.electrodeArrayDesignClosed
    (And.intro E.biocompatibilityClosed
      (And.intro E.wirelessCommunicationClosed
        (And.intro E.powerManagementClosed E.surgicalPlacementClosed)))

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
