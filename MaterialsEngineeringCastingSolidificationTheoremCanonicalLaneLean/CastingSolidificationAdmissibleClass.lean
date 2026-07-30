import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure CastingAdmittedObject where
  alloySystem : Type
  castingProcess : Type
  solidificationMicrostructure : Prop
  thermalField : Prop
  defectFreeCastProduct : Prop
  conclusion : defectFreeCastProduct

structure CastingAdmissibleClass (A : AdmissibleClass) where
  object : CastingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse