import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCellVolume : ℝ
  latticeParameters : Prop
  symmetryGroup : Type v
  symmetryGroupFinite : Prop

structure CrystalLatticeEvidence (C : CrystalLatticePackage) where
  unitCellVolumePositive : C.unitCellVolume > 0
  latticeParametersConsistent : C.latticeParameters
  symmetryGroupFiniteClosed : C.symmetryGroupFinite

def CrystalLatticeClosed (C : CrystalLatticePackage) : Prop :=
  C.unitCellVolume > 0 ∧ C.latticeParameters ∧ C.symmetryGroupFinite

theorem crystal_lattice_closed_from_evidence (C : CrystalLatticePackage)
    (E : CrystalLatticeEvidence C) : CrystalLatticeClosed C := by
  exact And.intro E.unitCellVolumePositive
    (And.intro E.latticeParametersConsistent E.symmetryGroupFiniteClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse