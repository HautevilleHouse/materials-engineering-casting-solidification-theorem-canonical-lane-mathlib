import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure HeatTransferSolidification where
  thermalConductivityModel : Prop
  latentHeatEvolution : Prop
  temperatureGradient : Prop
  coolingRateControl : Prop
  solidificationFrontTracking : Prop
  thermalConductivityModelClosed : thermalConductivityModel
  latentHeatEvolutionClosed : latentHeatEvolution
  temperatureGradientClosed : temperatureGradient
  coolingRateControlClosed : coolingRateControl
  solidificationFrontTrackingClosed : solidificationFrontTracking

structure HeatTransferSolidificationEvidence (H : HeatTransferSolidification) where
  thermalConductivityModelClosed : H.thermalConductivityModel
  latentHeatEvolutionClosed : H.latentHeatEvolution
  temperatureGradientClosed : H.temperatureGradient
  coolingRateControlClosed : H.coolingRateControl
  solidificationFrontTrackingClosed : H.solidificationFrontTracking

def HeatTransferSolidificationClosed (H : HeatTransferSolidification) : Prop :=
  H.thermalConductivityModel ∧ H.latentHeatEvolution ∧ H.temperatureGradient ∧ H.coolingRateControl ∧ H.solidificationFrontTracking

theorem heat_transfer_solidification_closed_from_evidence (H : HeatTransferSolidification) (E : HeatTransferSolidificationEvidence H) : HeatTransferSolidificationClosed H := by
  exact And.intro E.thermalConductivityModelClosed (And.intro E.latentHeatEvolutionClosed (And.intro E.temperatureGradientClosed (And.intro E.coolingRateControlClosed E.solidificationFrontTrackingClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse