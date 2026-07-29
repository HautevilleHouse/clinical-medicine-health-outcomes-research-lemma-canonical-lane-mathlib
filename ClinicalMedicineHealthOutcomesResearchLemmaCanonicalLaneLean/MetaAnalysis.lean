import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure MetaAnalysisPackage (C : AdmissibleClass) where
  fixedEffectModel : Prop
  randomEffectsModel : Prop
  heterogeneityMeasure : Prop
  publicationBiasTest : Prop
  forestPlot : Prop
  funnelPlot : Prop
  effectSizeAggregation : Prop
  subgroupAnalysis : Prop

def MetaAnalysisClosed (C : AdmissibleClass) (M : MetaAnalysisPackage C) : Prop :=
  M.fixedEffectModel ∧ M.randomEffectsModel ∧ M.heterogeneityMeasure ∧ M.publicationBiasTest ∧ M.forestPlot ∧ M.funnelPlot ∧ M.effectSizeAggregation ∧ M.subgroupAnalysis

structure MetaAnalysisEvidence (C : AdmissibleClass) (M : MetaAnalysisPackage C) where
  fixedEffectModelClosed : M.fixedEffectModel
  randomEffectsModelClosed : M.randomEffectsModel
  heterogeneityMeasureClosed : M.heterogeneityMeasure
  publicationBiasTestClosed : M.publicationBiasTest
  forestPlotClosed : M.forestPlot
  funnelPlotClosed : M.funnelPlot
  effectSizeAggregationClosed : M.effectSizeAggregation
  subgroupAnalysisClosed : M.subgroupAnalysis

theorem meta_analysis_closed_from_evidence (C : AdmissibleClass) (M : MetaAnalysisPackage C) (E : MetaAnalysisEvidence C M) :
    MetaAnalysisClosed C M := by
  exact And.intro E.fixedEffectModelClosed (And.intro E.randomEffectsModelClosed (And.intro E.heterogeneityMeasureClosed (And.intro E.publicationBiasTestClosed (And.intro E.forestPlotClosed (And.intro E.funnelPlotClosed (And.intro E.effectSizeAggregationClosed E.subgroupAnalysisClosed))))))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse