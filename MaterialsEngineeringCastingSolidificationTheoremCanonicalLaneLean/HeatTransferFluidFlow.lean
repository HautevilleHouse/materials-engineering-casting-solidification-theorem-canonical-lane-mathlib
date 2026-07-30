import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure HeatTransferPackage where
  thermalDiffusivity : Prop
  latentHeatEvolution : Prop
  interfacialHeatTransferCoefficient : Prop
  temperatureField : Prop

structure FluidFlowPackage where
  naturalConvection : Prop
  forcedConvection : Prop
  mushyZonePermeability : Prop
  shrinkageFlow : Prop

structure TransportEvidence where
  heatTransferClosed : HeatTransferPackage → Prop
  fluidFlowClosed : FluidFlowPackage → Prop

theorem transport_closed_from_evidence (H : HeatTransferPackage) (F : FluidFlowPackage) (E : TransportEvidence) : H.thermalDiffusivity ∧ F.naturalConvection := by
  exact And.intro (E.heatTransferClosed H) (E.fluidFlowClosed F)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse