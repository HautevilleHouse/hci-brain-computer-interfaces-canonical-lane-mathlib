import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HciBrainComputerInterfacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  bciConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "HciBrainComputerInterfacesCanonicalLaneLean",
  theoremName := "HciBrainComputerInterfacesCanonicalLaneLean",
  theoremObject := "Brain-Computer Interface Closure Theorem",
  classicalBoundary := "decoding and feedback closure boundary",
  bciConstrainedStatement := "admissible-class BCI closure internalized through bridge and gate",
  certificateLane := "bci_constrained",
  carriedRemainder := "unrestricted classical boundary carried by theoremBoundaryOpen"
}

end HciBrainComputerInterfacesCanonicalLaneLean
end HautevilleHouse
