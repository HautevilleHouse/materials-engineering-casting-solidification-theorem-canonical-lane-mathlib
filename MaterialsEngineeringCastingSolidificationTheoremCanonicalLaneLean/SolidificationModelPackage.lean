import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure SolidificationModelPackage where
  temperatureField : Type u
  phaseFraction : Type v
  heatEquation : Prop
  latentHeat : Prop
  solidificationRate : Prop
  dendriteArmSpacing : Prop

structure SolidificationModelEvidence (S : SolidificationModelPackage) where
  temperatureFieldClosed : S.temperatureField
  phaseFractionClosed : S.phaseFraction
  heatEquationClosed : S.heatEquation
  latentHeatClosed : S.latentHeat
  solidificationRateClosed : S.solidificationRate
  dendriteArmSpacingClosed : S.dendriteArmSpacing

def SolidificationModelClosed (S : SolidificationModelPackage) : Prop :=
  S.temperatureField ∧ S.phaseFraction ∧ S.heatEquation ∧ S.latentHeat ∧ S.solidificationRate ∧ S.dendriteArmSpacing

theorem solidification_model_closed_from_evidence (S : SolidificationModelPackage) (E : SolidificationModelEvidence S) : SolidificationModelClosed S := by
  exact And.intro E.temperatureFieldClosed
    (And.intro E.phaseFractionClosed
      (And.intro E.heatEquationClosed
        (And.intro E.latentHeatClosed
          (And.intro E.solidificationRateClosed E.dendriteArmSpacingClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse