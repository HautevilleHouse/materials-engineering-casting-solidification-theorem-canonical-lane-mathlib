import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure PhaseFrontPackage where
  thermalGradient : ℝ
  solidificationVelocity : ℝ
  interfaceTemperature : ℝ
  constitutionalUndercooling : Prop
  stabilityCriterion : Prop

structure PhaseFrontEvidence (P : PhaseFrontPackage) where
  thermalGradientClosed : P.thermalGradient > 0
  solidificationVelocityClosed : P.solidificationVelocity > 0
  interfaceTemperatureClosed : P.interfaceTemperature < 0
  constitutionalUndercoolingClosed : P.constitutionalUndercooling
  stabilityCriterionClosed : P.stabilityCriterion

def PhaseFrontClosed (P : PhaseFrontPackage) : Prop :=
  P.thermalGradient > 0 ∧ P.solidificationVelocity > 0 ∧
  P.interfaceTemperature < 0 ∧ P.constitutionalUndercooling ∧
  P.stabilityCriterion

theorem phase_front_closed_from_evidence (P : PhaseFrontPackage)
    (E : PhaseFrontEvidence P) : PhaseFrontClosed P := by
  exact And.intro E.thermalGradientClosed
    (And.intro E.solidificationVelocityClosed
      (And.intro E.interfaceTemperatureClosed
        (And.intro E.constitutionalUndercoolingClosed
          E.stabilityCriterionClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse
