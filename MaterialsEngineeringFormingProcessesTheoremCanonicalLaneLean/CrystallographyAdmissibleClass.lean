import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure CrystalStructure where
  latticeType : Type
  basisVectors : Type
  symmetryGroup : Type
  bravaisLatticeClassified : Prop
  unitCellGeometry : Prop
  xrdPatternComputed : Prop

def CrystalStructureAdmissible (C : CrystalStructure) : Prop :=
  C.bravaisLatticeClassified ∧ C.unitCellGeometry ∧ C.xrdPatternComputed

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse