import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure EvidenceSynthesisPackage where
  studies : List String
  effectSizes : List Float
  heterogeneity : Prop
  metaAnalysisMethod : Prop
  pooledEstimate : Float
  evidenceSynthesisDefined : Prop

structure EvidenceSynthesisEvidence (E : EvidenceSynthesisPackage) where
  evidenceSynthesisDefinedClosed : E.evidenceSynthesisDefined

def EvidenceSynthesisClosed (E : EvidenceSynthesisPackage) : Prop := E.evidenceSynthesisDefined

theorem evidence_synthesis_closed_from_evidence (E : EvidenceSynthesisPackage) (F : EvidenceSynthesisEvidence E) : EvidenceSynthesisClosed E :=
  F.evidenceSynthesisDefinedClosed

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse