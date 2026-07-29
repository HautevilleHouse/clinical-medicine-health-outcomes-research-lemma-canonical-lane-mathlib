import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transferRates : Type u
  initialConditions : Type v
  solutionOperator : Type w
  closedForm : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  numCompartmentsClosed : C.numCompartments = C.numCompartments
  transferRatesClosed : C.transferRates
  initialConditionsClosed : C.initialConditions
  solutionOperatorClosed : C.solutionOperator
  closedFormClosed : C.closedForm

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.numCompartments = C.numCompartments ∧ C.transferRates ∧ C.initialConditions ∧ C.solutionOperator ∧ C.closedForm

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.numCompartmentsClosed (And.intro E.transferRatesClosed (And.intro E.initialConditionsClosed (And.intro E.solutionOperatorClosed E.closedFormClosed)))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse