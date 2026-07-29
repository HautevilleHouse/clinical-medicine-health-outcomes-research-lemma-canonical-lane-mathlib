import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure HealthOutcomesPackage where
  outcomeDefinition : Prop
  treatmentEffect : Prop
  confoundingControl : Prop
  statisticalInference : Prop

structure HealthOutcomesEvidence (H : HealthOutcomesPackage) where
  outcomeDefinitionClosed : H.outcomeDefinition
  treatmentEffectClosed : H.treatmentEffect
  confoundingControlClosed : H.confoundingControl
  statisticalInferenceClosed : H.statisticalInference

def HealthOutcomesClosed (H : HealthOutcomesPackage) : Prop :=
  H.outcomeDefinition ∧ H.treatmentEffect ∧ H.confoundingControl ∧ H.statisticalInference

theorem health_outcomes_closed_from_evidence (H : HealthOutcomesPackage) (E : HealthOutcomesEvidence H) :
    HealthOutcomesClosed H := by
  exact And.intro E.outcomeDefinitionClosed
    (And.intro E.treatmentEffectClosed
      (And.intro E.confoundingControlClosed E.statisticalInferenceClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse