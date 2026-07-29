import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure RandomizedControlledTrial where
  sampleSize : ℕ
  randomizationMethod : Prop
  blinding : Prop
  primaryEndpoint : Prop
  statisticalPower : Prop

structure TrialDesignEvidence (T : RandomizedControlledTrial) where
  randomizationMethodClosed : T.randomizationMethod
  blindingClosed : T.blinding
  primaryEndpointClosed : T.primaryEndpoint
  statisticalPowerClosed : T.statisticalPower

def TrialDesignClosed (T : RandomizedControlledTrial) : Prop :=
  T.randomizationMethod ∧ T.blinding ∧ T.primaryEndpoint ∧ T.statisticalPower

theorem trial_design_closed_from_evidence (T : RandomizedControlledTrial) (E : TrialDesignEvidence T) : TrialDesignClosed T := by
  exact And.intro E.randomizationMethodClosed (And.intro E.blindingClosed (And.intro E.primaryEndpointClosed E.statisticalPowerClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse