import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean

structure PharmacokineticsModelPackage where
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeOfDistribution : ℝ
  dose : ℝ
  concentrationCurve : Type u
  biexponential : Prop

structure PharmacokineticsModelEvidence (P : PharmacokineticsModelPackage) where
  absorptionRateClosed : P.absorptionRate = P.absorptionRate
  eliminationRateClosed : P.eliminationRate = P.eliminationRate
  volumeOfDistributionClosed : P.volumeOfDistribution = P.volumeOfDistribution
  doseClosed : P.dose = P.dose
  concentrationCurveClosed : P.concentrationCurve
  biexponentialClosed : P.biexponential

def PharmacokineticsModelClosed (P : PharmacokineticsModelPackage) : Prop :=
  P.absorptionRate = P.absorptionRate ∧ P.eliminationRate = P.eliminationRate ∧ P.volumeOfDistribution = P.volumeOfDistribution ∧ P.dose = P.dose ∧ P.concentrationCurve ∧ P.biexponential

theorem pharmacokinetics_model_closed_from_evidence (P : PharmacokineticsModelPackage) (E : PharmacokineticsModelEvidence P) : PharmacokineticsModelClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.eliminationRateClosed (And.intro E.volumeOfDistributionClosed (And.intro E.doseClosed (And.intro E.concentrationCurveClosed E.biexponentialClosed))))

end ClinicalMedicineHealthOutcomesResearchLemmaCanonicalLaneLean
end HautevilleHouse