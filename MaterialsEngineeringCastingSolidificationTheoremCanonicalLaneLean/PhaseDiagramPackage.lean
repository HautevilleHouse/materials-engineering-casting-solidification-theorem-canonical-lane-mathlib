import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  equilibriumConditions : Prop
  solidusLiquidusLines : Prop
  eutecticPoint : Prop
  phaseRule : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsClosed : P.components
  phasesClosed : P.phases
  equilibriumConditionsClosed : P.equilibriumConditions
  solidusLiquidusLinesClosed : P.solidusLiquidusLines
  eutecticPointClosed : P.eutecticPoint
  phaseRuleClosed : P.phaseRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.components ∧ P.phases ∧ P.equilibriumConditions ∧ P.solidusLiquidusLines ∧ P.eutecticPoint ∧ P.phaseRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.componentsClosed
    (And.intro E.phasesClosed
      (And.intro E.equilibriumConditionsClosed
        (And.intro E.solidusLiquidusLinesClosed
          (And.intro E.eutecticPointClosed E.phaseRuleClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse