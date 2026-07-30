import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  bravaisLattice : Prop
  symmetryGroup : Prop
  xrayDiffractionPattern : Prop
  millerIndicesDefined : Prop
  crystalSystem : String

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClosed : C.bravaisLattice
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern
  millerIndicesDefinedClosed : C.millerIndicesDefined

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLattice ∧ C.symmetryGroup ∧
  C.xrayDiffractionPattern ∧ C.millerIndicesDefined

theorem crystallography_closed_from_evidence (C : CrystallographyPackage)
    (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeClosed
      (And.intro E.symmetryGroupClosed
        (And.intro E.xrayDiffractionPatternClosed E.millerIndicesDefinedClosed)))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse
