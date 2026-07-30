import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure SolidificationKineticsPackage where
  nucleationRate : Type u
  growthVelocity : Type v
  solidificationFront : Type w
  latentHeatRelease : Prop
  dendriteArmSpacing : Prop
  microsegregation : Prop

def SolidificationKineticsClosed (K : SolidificationKineticsPackage) : Prop :=
  K.latentHeatRelease ∧ K.dendriteArmSpacing ∧ K.microsegregation

theorem solidification_kinetics_closed_from_evidence (K : SolidificationKineticsPackage) :
    SolidificationKineticsClosed K := by
  exact And.intro K.latentHeatRelease (And.intro K.dendriteArmSpacing K.microsegregation)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse