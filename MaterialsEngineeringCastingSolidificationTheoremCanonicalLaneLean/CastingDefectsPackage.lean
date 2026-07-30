import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure CastingDefectsPackage where
  shrinkagePorosity : Prop
  gasPorosity : Prop
  hotTearing : Prop
  inclusionFormation : Prop
  defectCriteria : Prop

def CastingDefectsClosed (C : CastingDefectsPackage) : Prop :=
  C.shrinkagePorosity ∧ C.gasPorosity ∧ C.hotTearing ∧ C.inclusionFormation ∧ C.defectCriteria

theorem casting_defects_closed (C : CastingDefectsPackage) (h1 : C.shrinkagePorosity) (h2 : C.gasPorosity) (h3 : C.hotTearing) (h4 : C.inclusionFormation) (h5 : C.defectCriteria) :
    CastingDefectsClosed C := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse
