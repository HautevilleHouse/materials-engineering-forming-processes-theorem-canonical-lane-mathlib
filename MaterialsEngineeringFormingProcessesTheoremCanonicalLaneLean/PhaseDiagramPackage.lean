import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List Type
  phases : List Type
  phaseTransitions : Prop
  leverRule : Prop
  freeEnergyCurve : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseTransitionsClosed : P.phaseTransitions
  leverRuleClosed : P.leverRule
  freeEnergyCurveClosed : P.freeEnergyCurve

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseTransitions ∧ P.leverRule ∧ P.freeEnergyCurve

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseTransitionsClosed
    (And.intro E.leverRuleClosed E.freeEnergyCurveClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse