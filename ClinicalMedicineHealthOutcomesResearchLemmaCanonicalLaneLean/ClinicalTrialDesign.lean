import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure ClinicalTrialDesignPackage (C : AdmissibleClass) where
  randomization : Prop
  blinding : Prop
  controlGroup : Prop
  sampleSizeCalculation : Prop
  primaryEndpoint : Prop
  secondaryEndpoints : Prop
  intentionToTreat : Prop
  perProtocol : Prop
  interimAnalysis : Prop

def ClinicalTrialDesignClosed (C : AdmissibleClass) (T : ClinicalTrialDesignPackage C) : Prop :=
  T.randomization ∧ T.blinding ∧ T.controlGroup ∧ T.sampleSizeCalculation ∧ T.primaryEndpoint ∧ T.secondaryEndpoints ∧ T.intentionToTreat ∧ T.perProtocol ∧ T.interimAnalysis

structure ClinicalTrialDesignEvidence (C : AdmissibleClass) (T : ClinicalTrialDesignPackage C) where
  randomizationClosed : T.randomization
  blindingClosed : T.blinding
  controlGroupClosed : T.controlGroup
  sampleSizeCalculationClosed : T.sampleSizeCalculation
  primaryEndpointClosed : T.primaryEndpoint
  secondaryEndpointsClosed : T.secondaryEndpoints
  intentionToTreatClosed : T.intentionToTreat
  perProtocolClosed : T.perProtocol
  interimAnalysisClosed : T.interimAnalysis

theorem clinical_trial_design_closed_from_evidence (C : AdmissibleClass) (T : ClinicalTrialDesignPackage C) (E : ClinicalTrialDesignEvidence C T) :
    ClinicalTrialDesignClosed C T := by
  exact And.intro E.randomizationClosed (And.intro E.blindingClosed (And.intro E.controlGroupClosed (And.intro E.sampleSizeCalculationClosed (And.intro E.primaryEndpointClosed (And.intro E.secondaryEndpointsClosed (And.intro E.intentionToTreatClosed (And.intro E.perProtocolClosed E.interimAnalysisClosed)))))))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse