import MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CastingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.castingWitness

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse