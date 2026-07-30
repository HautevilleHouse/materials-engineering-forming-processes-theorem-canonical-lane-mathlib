import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure FormingProcessPackage where
  deformationZone : Type u
  toolGeometry : Type v
  strainRateField : Prop
  temperatureDistribution : Prop
  microstructuralEvolution : Prop
  processDefects : Prop

structure FormingProcessEvidence (F : FormingProcessPackage) where
  strainRateFieldClosed : F.strainRateField
  temperatureDistributionClosed : F.temperatureDistribution
  microstructuralEvolutionClosed : F.microstructuralEvolution
  processDefectsClosed : F.processDefects

def FormingProcessClosed (F : FormingProcessPackage) : Prop :=
  F.strainRateField ∧ F.temperatureDistribution ∧ F.microstructuralEvolution ∧ F.processDefects

theorem forming_process_closed_from_evidence (F : FormingProcessPackage) (E : FormingProcessEvidence F) : FormingProcessClosed F := by
  exact And.intro E.strainRateFieldClosed (And.intro E.temperatureDistributionClosed (And.intro E.microstructuralEvolutionClosed E.processDefectsClosed))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse