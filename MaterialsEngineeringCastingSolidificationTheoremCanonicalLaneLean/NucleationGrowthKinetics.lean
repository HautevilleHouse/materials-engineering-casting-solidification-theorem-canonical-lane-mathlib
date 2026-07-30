import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure NucleationGrowthKinetics where
  nucleationRate : Prop
  growthRate : Prop
  undercoolingDrivingForce : Prop
  criticalNucleusSize : Prop
  crystallizationFrontVelocity : Prop
  nucleationRateClosed : nucleationRate
  growthRateClosed : growthRate
  undercoolingDrivingForceClosed : undercoolingDrivingForce
  criticalNucleusSizeClosed : criticalNucleusSize
  crystallizationFrontVelocityClosed : crystallizationFrontVelocity

structure NucleationGrowthKineticsEvidence (K : NucleationGrowthKinetics) where
  nucleationRateClosed : K.nucleationRate
  growthRateClosed : K.growthRate
  undercoolingDrivingForceClosed : K.undercoolingDrivingForce
  criticalNucleusSizeClosed : K.criticalNucleusSize
  crystallizationFrontVelocityClosed : K.crystallizationFrontVelocity

def NucleationGrowthKineticsClosed (K : NucleationGrowthKinetics) : Prop :=
  K.nucleationRate ∧ K.growthRate ∧ K.undercoolingDrivingForce ∧ K.criticalNucleusSize ∧ K.crystallizationFrontVelocity

theorem nucleation_growth_kinetics_closed_from_evidence (K : NucleationGrowthKinetics) (E : NucleationGrowthKineticsEvidence K) : NucleationGrowthKineticsClosed K := by
  exact And.intro E.nucleationRateClosed (And.intro E.growthRateClosed (And.intro E.undercoolingDrivingForceClosed (And.intro E.criticalNucleusSizeClosed E.crystallizationFrontVelocityClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse