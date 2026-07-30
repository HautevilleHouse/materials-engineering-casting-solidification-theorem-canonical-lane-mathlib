import MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedCastingObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CastingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse