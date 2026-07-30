import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure PhaseDiagramsPackage where
  componentSpecies : Type u
  temperatureRange : Type v
  pressureRange : Type w
  phaseBoundary : Prop
  eutecticPoint : Prop
  leverRule : Prop
  gibbsPhaseRule : Prop
  freeEnergyModel : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseBoundaryClosed : P.phaseBoundary
  eutecticPointClosed : P.eutecticPoint
  leverRuleClosed : P.leverRule
  gibbsPhaseRuleClosed : P.gibbsPhaseRule
  freeEnergyModelClosed : P.freeEnergyModel

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseBoundary ∧ P.eutecticPoint ∧ P.leverRule ∧
  P.gibbsPhaseRule ∧ P.freeEnergyModel

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage)
    (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.phaseBoundaryClosed
    (And.intro E.eutecticPointClosed
      (And.intro E.leverRuleClosed
        (And.intro E.gibbsPhaseRuleClosed E.freeEnergyModelClosed)))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse
