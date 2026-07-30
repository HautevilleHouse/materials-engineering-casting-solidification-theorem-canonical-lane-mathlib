import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure MicrosegregationDefectPrediction where
  solutePartitionCoefficient : Prop
  dendriteArmSpacing : Prop
  porosityFormation : Prop
  hotTearingCriterion : Prop
  shrinkageCavityModel : Prop
  solutePartitionCoefficientClosed : solutePartitionCoefficient
  dendriteArmSpacingClosed : dendriteArmSpacing
  porosityFormationClosed : porosityFormation
  hotTearingCriterionClosed : hotTearingCriterion
  shrinkageCavityModelClosed : shrinkageCavityModel

structure MicrosegregationDefectPredictionEvidence (M : MicrosegregationDefectPrediction) where
  solutePartitionCoefficientClosed : M.solutePartitionCoefficient
  dendriteArmSpacingClosed : M.dendriteArmSpacing
  porosityFormationClosed : M.porosityFormation
  hotTearingCriterionClosed : M.hotTearingCriterion
  shrinkageCavityModelClosed : M.shrinkageCavityModel

def MicrosegregationDefectPredictionClosed (M : MicrosegregationDefectPrediction) : Prop :=
  M.solutePartitionCoefficient ∧ M.dendriteArmSpacing ∧ M.porosityFormation ∧ M.hotTearingCriterion ∧ M.shrinkageCavityModel

theorem microsegregation_defect_prediction_closed_from_evidence (M : MicrosegregationDefectPrediction) (E : MicrosegregationDefectPredictionEvidence M) : MicrosegregationDefectPredictionClosed M := by
  exact And.intro E.solutePartitionCoefficientClosed (And.intro E.dendriteArmSpacingClosed (And.intro E.porosityFormationClosed (And.intro E.hotTearingCriterionClosed E.shrinkageCavityModelClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse