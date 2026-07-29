import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure SurvivalAnalysisPackage (C : AdmissibleClass) where
  kaplanMeierEstimator : Prop
  logRankTest : Prop
  coxProportionalHazards : Prop
  hazardRatio : Prop
  censoringMechanism : Prop
  survivalFunction : Prop
  medianSurvivalTime : Prop
  coxRegressionValid : Prop
  proportionalHazardsAssumption : Prop

def SurvivalAnalysisClosed (C : AdmissibleClass) (S : SurvivalAnalysisPackage C) : Prop :=
  S.kaplanMeierEstimator ∧ S.logRankTest ∧ S.coxProportionalHazards ∧ S.hazardRatio ∧ S.censoringMechanism ∧ S.survivalFunction ∧ S.medianSurvivalTime ∧ S.coxRegressionValid ∧ S.proportionalHazardsAssumption

structure SurvivalAnalysisEvidence (C : AdmissibleClass) (S : SurvivalAnalysisPackage C) where
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  logRankTestClosed : S.logRankTest
  coxProportionalHazardsClosed : S.coxProportionalHazards
  hazardRatioClosed : S.hazardRatio
  censoringMechanismClosed : S.censoringMechanism
  survivalFunctionClosed : S.survivalFunction
  medianSurvivalTimeClosed : S.medianSurvivalTime
  coxRegressionValidClosed : S.coxRegressionValid
  proportionalHazardsAssumptionClosed : S.proportionalHazardsAssumption

theorem survival_analysis_closed_from_evidence (C : AdmissibleClass) (S : SurvivalAnalysisPackage C) (E : SurvivalAnalysisEvidence C S) :
    SurvivalAnalysisClosed C S := by
  exact And.intro E.kaplanMeierEstimatorClosed (And.intro E.logRankTestClosed (And.intro E.coxProportionalHazardsClosed (And.intro E.hazardRatioClosed (And.intro E.censoringMechanismClosed (And.intro E.survivalFunctionClosed (And.intro E.medianSurvivalTimeClosed (And.intro E.coxRegressionValidClosed E.proportionalHazardsAssumptionClosed)))))))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse