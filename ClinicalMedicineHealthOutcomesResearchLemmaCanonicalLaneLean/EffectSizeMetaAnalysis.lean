import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure EffectSize where
  pointEstimate : ℝ
  standardError : ℝ
  confidenceInterval : ℝ × ℝ
  significanceTest : Prop

structure MetaAnalysisModel where
  studies : List EffectSize
  heterogeneityMeasure : Prop
  randomEffectsModel : Prop
  publicationBiasAssessment : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisModel) where
  heterogeneityMeasureClosed : M.heterogeneityMeasure
  randomEffectsModelClosed : M.randomEffectsModel
  publicationBiasAssessmentClosed : M.publicationBiasAssessment

def MetaAnalysisClosed (M : MetaAnalysisModel) : Prop :=
  M.heterogeneityMeasure ∧ M.randomEffectsModel ∧ M.publicationBiasAssessment

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisModel) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M := by
  exact And.intro E.heterogeneityMeasureClosed (And.intro E.randomEffectsModelClosed E.publicationBiasAssessmentClosed)

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse