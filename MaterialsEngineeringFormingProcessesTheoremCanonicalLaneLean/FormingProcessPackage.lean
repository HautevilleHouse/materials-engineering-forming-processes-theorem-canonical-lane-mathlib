import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure FormingProcessPackage where
  processType : String
  temperature : Type u
  strainRate : Type v
  constitutiveModel : Prop
  formingLimitDiagram : Prop
  microstructureEvolution : Prop

structure FormingProcessEvidence (F : FormingProcessPackage) where
  constitutiveModelClosed : F.constitutiveModel
  formingLimitDiagramClosed : F.formingLimitDiagram
  microstructureEvolutionClosed : F.microstructureEvolution

def FormingProcessClosed (F : FormingProcessPackage) : Prop :=
  F.constitutiveModel ∧ F.formingLimitDiagram ∧ F.microstructureEvolution

theorem forming_process_closed_from_evidence (F : FormingProcessPackage) (E : FormingProcessEvidence F) :
    FormingProcessClosed F := by
  exact And.intro E.constitutiveModelClosed
    (And.intro E.formingLimitDiagramClosed E.microstructureEvolutionClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse