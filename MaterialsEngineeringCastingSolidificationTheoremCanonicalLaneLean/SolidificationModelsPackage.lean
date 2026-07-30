import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure SolidificationModelsPackage where
  nucleationRate : Type u
  growthRate : Type v
  thermalGradient : ℝ
  interfaceStability : Prop
  dendriteArmSpacing : ℝ → ℝ

def SolidificationModelsClosed (S : SolidificationModelsPackage) : Prop :=
  S.interfaceStability ∧ (∀ (coolingRate : ℝ), 0 < S.dendriteArmSpacing coolingRate)

theorem solidification_models_closed (S : SolidificationModelsPackage) (hStability : S.interfaceStability) (hDendrite : ∀ (coolingRate : ℝ), 0 < S.dendriteArmSpacing coolingRate) :
    SolidificationModelsClosed S := by
  exact And.intro hStability hDendrite

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse
