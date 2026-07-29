import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure DiagnosticTestPackage where
  sensitivity : ℝ
  specificity : ℝ
  prevalence : ℝ
  positivePredictiveValue : ℝ
  negativePredictiveValue : ℝ
  likelihoodRatioPositive : ℝ
  likelihoodRatioNegative : ℝ

def DiagnosticInferenceClosed (D : DiagnosticTestPackage) : Prop :=
  D.sensitivity > 0 ∧ D.specificity > 0 ∧ D.prevalence > 0 ∧ D.positivePredictiveValue > 0 ∧ D.negativePredictiveValue > 0 ∧ D.likelihoodRatioPositive > 0 ∧ D.likelihoodRatioNegative > 0

theorem diagnostic_inference_closed (D : DiagnosticTestPackage) (h : DiagnosticInferenceClosed D) : DiagnosticInferenceClosed D := h

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse