import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure BCIRegisteredObject where
  carrier : Type
  signalLabels : List String
  decodingClosed : Prop
  feedbackClosed : Prop
  conclusion : decodingClosed ∧ feedbackClosed

structure AdmissibleClass where
  object : BCIRegisteredObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
