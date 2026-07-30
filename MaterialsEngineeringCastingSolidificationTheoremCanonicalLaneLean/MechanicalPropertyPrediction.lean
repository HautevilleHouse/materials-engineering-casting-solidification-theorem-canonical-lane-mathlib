import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure YieldStrengthModel where
  solidSolutionStrengthening : Prop
  precipitationStrengthening : Prop
  grainBoundaryStrengthening : Prop
  dislocationDensity : Prop

structure DuctilityFracture where
  damageNucleation : Prop
  voidGrowth : Prop
  fractureCriterion : Prop
  ductilityPrediction : Prop

structure PropertyEvidence where
  yieldStrengthClosed : YieldStrengthModel → Prop
  ductilityFractureClosed : DuctilityFracture → Prop

theorem mechanical_property_closed_from_evidence (Y : YieldStrengthModel) (D : DuctilityFracture) (E : PropertyEvidence) : Y.solidSolutionStrengthening ∧ D.damageNucleation := by
  exact And.intro (E.yieldStrengthClosed Y) (E.ductilityFractureClosed D)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse