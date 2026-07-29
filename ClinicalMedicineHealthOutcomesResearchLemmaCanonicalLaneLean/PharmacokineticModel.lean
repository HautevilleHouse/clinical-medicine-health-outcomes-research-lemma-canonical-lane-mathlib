import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure PharmacokineticModelPackage where
  compartmentCount : Nat
  absorptionRate : Type
  eliminationRate : Type
  volumeOfDistribution : Type
  drugConcentration : Type
  linearDynamics : Prop
  steadyStateReachable : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  linearDynamicsClosed : P.linearDynamics
  steadyStateReachableClosed : P.steadyStateReachable

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.linearDynamics ∧ P.steadyStateReachable

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.linearDynamicsClosed E.steadyStateReachableClosed

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse