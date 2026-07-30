import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure FormingProcessPackage where
  processType : Type u
  temperatureField : Type v
  strainRateTensor : Type w
  constitutiveModel : Prop
  frictionModel : Prop
  toolGeometry : Prop

structure FormingProcessEvidence (F : FormingProcessPackage) where
  constitutiveModelClosed : F.constitutiveModel
  frictionModelClosed : F.frictionModel
  toolGeometryClosed : F.toolGeometry

def FormingProcessClosed (F : FormingProcessPackage) : Prop :=
  F.constitutiveModel ∧ F.frictionModel ∧ F.toolGeometry

theorem forming_process_closed_from_evidence (F : FormingProcessPackage)
    (E : FormingProcessEvidence F) : FormingProcessClosed F := by
  exact And.intro E.constitutiveModelClosed
    (And.intro E.frictionModelClosed E.toolGeometryClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse