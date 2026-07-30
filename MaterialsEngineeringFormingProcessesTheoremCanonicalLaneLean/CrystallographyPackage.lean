import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  unitCell : Type v
  bravaisLatticeClassification : Prop
  symmetryGroup : Prop
  xrayDiffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassificationClosed : C.bravaisLatticeClassification
  symmetryGroupClosed : C.symmetryGroup
  xrayDiffractionPatternClosed : C.xrayDiffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassification ∧ C.symmetryGroup ∧ C.xrayDiffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassificationClosed
    (And.intro E.symmetryGroupClosed E.xrayDiffractionPatternClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse