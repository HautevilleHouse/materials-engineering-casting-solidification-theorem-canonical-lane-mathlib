import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure HeatTransferPackage where
  thermalConductivity : ℝ
  specificHeat : ℝ
  density : ℝ
  latentHeatFusion : ℝ
  heatEquation : Prop
  boundaryConditions : Prop

def HeatTransferClosed (H : HeatTransferPackage) : Prop :=
  (0 < H.thermalConductivity) ∧ (0 < H.specificHeat) ∧ (0 < H.density) ∧ (0 < H.latentHeatFusion) ∧ H.heatEquation ∧ H.boundaryConditions

theorem heat_transfer_closed (H : HeatTransferPackage) (hCond : 0 < H.thermalConductivity) (hSpec : 0 < H.specificHeat) (hDens : 0 < H.density) (hLat : 0 < H.latentHeatFusion) (hEq : H.heatEquation) (hBC : H.boundaryConditions) :
    HeatTransferClosed H := by
  exact And.intro hCond (And.intro hSpec (And.intro hDens (And.intro hLat (And.intro hEq hBC))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse
