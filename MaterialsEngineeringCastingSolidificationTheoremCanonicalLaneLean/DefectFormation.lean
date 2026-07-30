import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure DefectFormationPackage where
  shrinkagePorosity : Prop
  gasPorosity : Prop
  segregation : Prop
  inclusionEntrapment : Prop
  hotTearingCriterion : Prop

def DefectFormationClosed (D : DefectFormationPackage) : Prop :=
  D.shrinkagePorosity ∧ D.gasPorosity ∧ D.segregation ∧ D.inclusionEntrapment ∧ D.hotTearingCriterion

theorem defect_formation_closed_from_evidence (D : DefectFormationPackage) : DefectFormationClosed D := by
  exact And.intro D.shrinkagePorosity (And.intro D.gasPorosity (And.intro D.segregation (And.intro D.inclusionEntrapment D.hotTearingCriterion)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse