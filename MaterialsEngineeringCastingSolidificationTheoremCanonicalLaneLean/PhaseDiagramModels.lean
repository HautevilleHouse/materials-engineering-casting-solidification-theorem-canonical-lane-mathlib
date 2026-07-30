import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  temperature : Type u
  composition : Type v
  solidusLine : temperature → composition → Prop
  liquidusLine : temperature → composition → Prop
  eutecticPoint : temperature × composition
  peritecticPoint : Option (temperature × composition)
  invariantReactions : Prop
  solidusLineSmooth : Prop
  liquidusLineSmooth : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  solidusLineSmoothClosed : P.solidusLineSmooth
  liquidusLineSmoothClosed : P.liquidusLineSmooth
  invariantReactionsClosed : P.invariantReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.solidusLineSmooth ∧ P.liquidusLineSmooth ∧ P.invariantReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.solidusLineSmoothClosed (And.intro E.liquidusLineSmoothClosed E.invariantReactionsClosed)

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse