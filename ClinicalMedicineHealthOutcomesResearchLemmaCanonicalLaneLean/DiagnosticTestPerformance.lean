import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure DiagnosticTestPackage where
  test : Type
  condition : Type
  truePositive : Nat
  falsePositive : Nat
  falseNegative : Nat
  trueNegative : Nat
  sensitivity : Float
  specificity : Float
  diagnosticMetricsDefined : Prop

structure DiagnosticTestEvidence (D : DiagnosticTestPackage) where
  diagnosticMetricsDefinedClosed : D.diagnosticMetricsDefined

def DiagnosticTestClosed (D : DiagnosticTestPackage) : Prop := D.diagnosticMetricsDefined

theorem diagnostic_test_closed_from_evidence (D : DiagnosticTestPackage) (E : DiagnosticTestEvidence D) : DiagnosticTestClosed D :=
  E.diagnosticMetricsDefinedClosed

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse