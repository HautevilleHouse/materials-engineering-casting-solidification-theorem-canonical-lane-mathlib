import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackTip : Type u
  stressIntensityFactor : Type v
  fractureToughness : Prop
  griffithCriterion : Prop
  parisLaw : Prop
  fatigueGrowth : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackTipClosed : F.crackTip
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  griffithCriterionClosed : F.griffithCriterion
  parisLawClosed : F.parisLaw
  fatigueGrowthClosed : F.fatigueGrowth

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackTip ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧ F.griffithCriterion ∧ F.parisLaw ∧ F.fatigueGrowth

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.crackTipClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.griffithCriterionClosed
          (And.intro E.parisLawClosed E.fatigueGrowthClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse