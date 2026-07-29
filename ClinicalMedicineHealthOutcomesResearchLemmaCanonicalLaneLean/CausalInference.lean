import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure CausalInferencePackage where
  treatmentAssignment : Type
  outcomeVariable : Type
  counterfactual : Type
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  averageTreatmentEffect : Prop
  propensityScore : Prop

structure CausalInferenceEvidence (C : CausalInferencePackage) where
  ignorabilityAssumptionClosed : C.ignorabilityAssumption
  positivityAssumptionClosed : C.positivityAssumption
  averageTreatmentEffectClosed : C.averageTreatmentEffect
  propensityScoreClosed : C.propensityScore

def CausalInferenceClosed (C : CausalInferencePackage) : Prop :=
  C.ignorabilityAssumption ∧ C.positivityAssumption ∧ C.averageTreatmentEffect ∧ C.propensityScore

theorem causal_inference_closed_from_evidence (C : CausalInferencePackage)
    (E : CausalInferenceEvidence C) : CausalInferenceClosed C := by
  exact And.intro E.ignorabilityAssumptionClosed
    (And.intro E.positivityAssumptionClosed
      (And.intro E.averageTreatmentEffectClosed E.propensityScoreClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse