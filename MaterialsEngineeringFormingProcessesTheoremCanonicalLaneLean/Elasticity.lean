import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  equilibriumEquations : Prop
  boundaryConditions : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorDefined : E.stressTensor = E.stressTensor
  strainTensorDefined : E.strainTensor = E.strainTensor
  constitutiveLawClosed : E.constitutiveLaw
  equilibriumEquationsClosed : E.equilibriumEquations
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.constitutiveLaw ∧ E.equilibriumEquations ∧ E.boundaryConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.constitutiveLawClosed (And.intro Ev.equilibriumEquationsClosed Ev.boundaryConditionsClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse