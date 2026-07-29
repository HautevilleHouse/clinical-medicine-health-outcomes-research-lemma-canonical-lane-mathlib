import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionModel : Prop
  distributionModel : Prop
  eliminationModel : Prop
  parameterEstimates : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  eliminationModelClosed : P.eliminationModel
  parameterEstimatesClosed : P.parameterEstimates

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.eliminationModel ∧ P.parameterEstimates

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionModelClosed
    (And.intro E.distributionModelClosed
      (And.intro E.eliminationModelClosed E.parameterEstimatesClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse