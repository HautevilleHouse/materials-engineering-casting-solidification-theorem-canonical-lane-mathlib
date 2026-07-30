import MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure AdmittedCastingObject where
  alloySystem : Type
  solidificationModel : Type
  defectFreeCasting : Prop
  castingWitness : defectFreeCasting

def CastingWitnessClosed (O : AdmittedCastingObject) : Prop :=
  O.defectFreeCasting

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse