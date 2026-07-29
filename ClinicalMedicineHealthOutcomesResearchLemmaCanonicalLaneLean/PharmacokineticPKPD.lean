import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure PharmacokineticPKPDModel where
  drugConcentration : Type
  effectCompartment : Type
  absorptionModel : Prop
  distributionModel : Prop
  eliminationModel : Prop
  pharmacodynamicLink : Prop

structure PharmacokineticPKPDEvidence (P : PharmacokineticPKPDModel) where
  absorptionModelClosed : P.absorptionModel
  distributionModelClosed : P.distributionModel
  eliminationModelClosed : P.eliminationModel
  pharmacodynamicLinkClosed : P.pharmacodynamicLink

def PharmacokineticPKPDClosed (P : PharmacokineticPKPDModel) : Prop :=
  P.absorptionModel ∧ P.distributionModel ∧ P.eliminationModel ∧ P.pharmacodynamicLink

theorem pharmacokinetic_pkpd_closed_from_evidence (P : PharmacokineticPKPDModel) (E : PharmacokineticPKPDEvidence P) :
    PharmacokineticPKPDClosed P := by
  exact And.intro E.absorptionModelClosed (And.intro E.distributionModelClosed (And.intro E.eliminationModelClosed E.pharmacodynamicLinkClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse