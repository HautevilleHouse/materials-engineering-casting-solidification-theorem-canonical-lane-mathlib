import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure CastingDefectPackage where
  porosityFormation : Prop
  shrinkageCavity : Prop
  hotTearing : Prop
  inclusionEntrapment : Prop
  segregationProfile : Prop
  defectHealing : Prop

structure CastingDefectEvidence (C : CastingDefectPackage) where
  porosityFormationClosed : C.porosityFormation
  shrinkageCavityClosed : C.shrinkageCavity
  hotTearingClosed : C.hotTearing
  inclusionEntrapmentClosed : C.inclusionEntrapment
  segregationProfileClosed : C.segregationProfile
  defectHealingClosed : C.defectHealing

def CastingDefectClosed (C : CastingDefectPackage) : Prop :=
  C.porosityFormation ∧ C.shrinkageCavity ∧ C.hotTearing ∧ C.inclusionEntrapment ∧ C.segregationProfile ∧ C.defectHealing

theorem casting_defect_closed_from_evidence (C : CastingDefectPackage) (E : CastingDefectEvidence C) : CastingDefectClosed C := by
  exact And.intro E.porosityFormationClosed
    (And.intro E.shrinkageCavityClosed
      (And.intro E.hotTearingClosed
        (And.intro E.inclusionEntrapmentClosed
          (And.intro E.segregationProfileClosed E.defectHealingClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse