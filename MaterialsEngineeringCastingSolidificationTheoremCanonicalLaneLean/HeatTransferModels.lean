import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure HeatTransferPackage where
  heatEquation : Type u
  thermalDiffusivity : Type v
  boundaryConditions : Type w
  moldCooling : Prop
  solidificationShrinkage : Prop
  thermalStresses : Prop

def HeatTransferClosed (H : HeatTransferPackage) : Prop :=
  H.moldCooling ∧ H.solidificationShrinkage ∧ H.thermalStresses

theorem heat_transfer_closed_from_evidence (H : HeatTransferPackage) : HeatTransferClosed H := by
  exact And.intro H.moldCooling (And.intro H.solidificationShrinkage H.thermalStresses)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse