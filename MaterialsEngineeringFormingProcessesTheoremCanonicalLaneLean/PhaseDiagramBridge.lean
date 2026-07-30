import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  temperatureRange : Prop
  pressureRange : Prop
  phaseBoundariesIdentified : Prop
  eutecticReactions : Prop
  solidSolutionRegions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesIdentifiedClosed : P.phaseBoundariesIdentified
  eutecticReactionsClosed : P.eutecticReactions
  solidSolutionRegionsClosed : P.solidSolutionRegions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesIdentified ∧ P.eutecticReactions ∧ P.solidSolutionRegions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesIdentifiedClosed (And.intro E.eutecticReactionsClosed E.solidSolutionRegionsClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse