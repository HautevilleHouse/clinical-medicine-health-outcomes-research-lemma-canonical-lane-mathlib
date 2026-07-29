import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure CompartmentModelPK (C : AdmissibleClass) where
  compartments : List Type
  transferRates : List (Type → Type)
  doseInput : Type
  eliminationRate : Prop
  steadyStateConcentration : Prop
  linearKinetics : Prop
  nonlinearKinetics : Prop
  eliminationRateClosed : eliminationRate
  steadyStateConcentrationClosed : steadyStateConcentration

structure CompartmentModelPKEvidence (C : AdmissibleClass) (M : CompartmentModelPK C) where
  linearKineticsClosed : M.linearKinetics
  nonlinearKineticsClosed : M.nonlinearKinetics
  eliminationRateClosed : M.eliminationRateClosed
  steadyStateConcentrationClosed : M.steadyStateConcentrationClosed

def CompartmentModelPKClosed (C : AdmissibleClass) (M : CompartmentModelPK C) : Prop :=
  M.linearKinetics ∧ M.nonlinearKinetics ∧ M.eliminationRate ∧ M.steadyStateConcentration

theorem compartment_model_pk_closed_from_evidence (C : AdmissibleClass) (M : CompartmentModelPK C) (E : CompartmentModelPKEvidence C M) :
    CompartmentModelPKClosed C M := by
  exact And.intro E.linearKineticsClosed (And.intro E.nonlinearKineticsClosed (And.intro E.eliminationRateClosed E.steadyStateConcentrationClosed))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse