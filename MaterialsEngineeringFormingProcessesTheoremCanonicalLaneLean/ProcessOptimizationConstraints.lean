import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure OptimizationPackage where
  designVariables : Type u
  objectiveFunction : Tipo v
  constraints : Prop
  feasibleRegion : Prop
  optimalityCondition : Prop

structure OptimizationEvidence (O : OptimizationPackage) where
  constraintsClosed : O.constraints
  feasibleRegionClosed : O.feasibleRegion
  optimalityConditionClosed : O.optimalityCondition

def OptimizationClosed (O : OptimizationPackage) : Prop :=
  O.constraints ∧ O.feasibleRegion ∧ O.optimalityCondition

theorem optimization_closed_from_evidence (O : OptimizationPackage)
    (E : OptimizationEvidence O) : OptimizationClosed O := by
  exact And.intro E.constraintsClosed
    (And.intro E.feasibleRegionClosed E.optimalityConditionClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse