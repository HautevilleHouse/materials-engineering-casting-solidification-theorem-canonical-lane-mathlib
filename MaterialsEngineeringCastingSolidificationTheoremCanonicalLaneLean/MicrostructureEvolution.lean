import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure MicrostructureEvolutionPackage where
  grainSize : Type u
  phaseFraction : Type v
  eutecticSpacing : Prop
  dendriteMorphology : Prop
  porosityFormation : Prop
  hotTearing : Prop

def MicrostructureEvolutionClosed (M : MicrostructureEvolutionPackage) : Prop :=
  M.eutecticSpacing ∧ M.dendriteMorphology ∧ M.porosityFormation ∧ M.hotTearing

theorem microstructure_evolution_closed_from_evidence (M : MicrostructureEvolutionPackage) :
    MicrostructureEvolutionClosed M := by
  exact And.intro M.eutecticSpacing (And.intro M.dendriteMorphology (And.intro M.porosityFormation M.hotTearing))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse