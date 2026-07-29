import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure HealthOutcomesModelPackage where
  population : Type
  intervention : Type
  outcome : Type
  effectivenessMeasure : Prop
  costEffectiveness : Prop
  outcomeModelDefined : Prop

structure HealthOutcomesModelEvidence (H : HealthOutcomesModelPackage) where
  outcomeModelDefinedClosed : H.outcomeModelDefined

def HealthOutcomesModelClosed (H : HealthOutcomesModelPackage) : Prop := H.outcomeModelDefined

theorem health_outcomes_model_closed_from_evidence (H : HealthOutcomesModelPackage) (E : HealthOutcomesModelEvidence H) : HealthOutcomesModelClosed H :=
  E.outcomeModelDefinedClosed

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse