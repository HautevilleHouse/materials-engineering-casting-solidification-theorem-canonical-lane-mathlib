import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure ProcessParameterPackage where
  pouringTemperature : Type u
  moldPreheat : Type v
  coolingRate : Type w
  castingSpeed : Option (Type x)
  solidificationTime : Prop
  thermalGradient : Prop
  processStability : Prop

def ProcessParameterClosed (P : ProcessParameterPackage) : Prop :=
  P.solidificationTime ∧ P.thermalGradient ∧ P.processStability

theorem process_parameter_closed_from_evidence (P : ProcessParameterPackage) :
    ProcessParameterClosed P := by
  exact And.intro P.solidificationTime (And.intro P.thermalGradient P.processStability)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse