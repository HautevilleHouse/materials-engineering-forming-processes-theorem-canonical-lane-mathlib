import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phaseRegions : Type u
  gibbsFreeEnergy : Type v
  leverRule : Prop
  phaseEquilibriumCondition : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  leverRuleClosed : P.leverRule
  phaseEquilibriumClosed : P.phaseEquilibriumCondition

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.leverRule ∧ P.phaseEquilibriumCondition

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.leverRuleClosed E.phaseEquilibriumClosed

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse