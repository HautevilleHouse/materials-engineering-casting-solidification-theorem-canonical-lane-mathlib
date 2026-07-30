import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure HeatTreatmentPackage where
  annealingProcess : Prop
  quenchingProcess : Prop
  temperingProcess : Prop
  phaseTransformation : Prop
  hardnessProfile : Prop
  residualStress : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  annealingProcessClosed : H.annealingProcess
  quenchingProcessClosed : H.quenchingProcess
  temperingProcessClosed : H.temperingProcess
  phaseTransformationClosed : H.phaseTransformation
  hardnessProfileClosed : H.hardnessProfile
  residualStressClosed : H.residualStress

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.annealingProcess ∧ H.quenchingProcess ∧ H.temperingProcess ∧ H.phaseTransformation ∧ H.hardnessProfile ∧ H.residualStress

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) : HeatTreatmentClosed H := by
  exact And.intro E.annealingProcessClosed
    (And.intro E.quenchingProcessClosed
      (And.intro E.temperingProcessClosed
        (And.intro E.phaseTransformationClosed
          (And.intro E.hardnessProfileClosed E.residualStressClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse