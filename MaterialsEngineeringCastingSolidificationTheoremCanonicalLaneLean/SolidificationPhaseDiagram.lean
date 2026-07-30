import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure SolidificationPhaseDiagram where
  alloySystem : Type u
  temperatureRange : Type v
  compositionRange : Type w
  solidusLine : Prop
  liquidusLine : Prop
  eutecticPoint : Prop
  peritecticPoint : Prop
  phaseRegions : Prop
  solidusLineClosed : solidusLine
  liquidusLineClosed : liquidusLine
  eutecticPointClosed : eutecticPoint
  peritecticPointClosed : peritecticPoint
  phaseRegionsClosed : phaseRegions

structure SolidificationPhaseDiagramEvidence (D : SolidificationPhaseDiagram) where
  solidusLineClosed : D.solidusLine
  liquidusLineClosed : D.liquidusLine
  eutecticPointClosed : D.eutecticPoint
  peritecticPointClosed : D.peritecticPoint
  phaseRegionsClosed : D.phaseRegions

def SolidificationPhaseDiagramClosed (D : SolidificationPhaseDiagram) : Prop :=
  D.solidusLine ∧ D.liquidusLine ∧ D.eutecticPoint ∧ D.peritecticPoint ∧ D.phaseRegions

theorem solidification_phase_diagram_closed_from_evidence (D : SolidificationPhaseDiagram) (E : SolidificationPhaseDiagramEvidence D) : SolidificationPhaseDiagramClosed D := by
  exact And.intro E.solidusLineClosed (And.intro E.liquidusLineClosed (And.intro E.eutecticPointClosed (And.intro E.peritecticPointClosed E.phaseRegionsClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse