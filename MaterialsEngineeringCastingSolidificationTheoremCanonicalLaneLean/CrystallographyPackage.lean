import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  unitCell : Type v
  bravaisLattice : Prop
  crystalSystem : Prop
  symmetryGroup : Prop
  xrayDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  unitCellClosed : C.unitCell
  bravaisLatticeClosed : C.bravaisLattice
  crystalSystemClosed : C.crystalSystem
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.unitCell ∧ C.bravaisLattice ∧ C.crystalSystem ∧ C.symmetryGroup ∧ C.xrayDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.unitCellClosed
      (And.intro E.bravaisLatticeClosed
        (And.intro E.crystalSystemClosed
          (And.intro E.symmetryGroupClosed E.xrayDiffractionPatternClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse