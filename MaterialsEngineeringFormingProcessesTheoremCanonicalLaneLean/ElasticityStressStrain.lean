import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  elasticModuli : Prop
  boundaryConditions : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  elasticModuliClosed : E.elasticModuli
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.elasticModuli ∧ E.boundaryConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.elasticModuliClosed Ev.boundaryConditionsClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse