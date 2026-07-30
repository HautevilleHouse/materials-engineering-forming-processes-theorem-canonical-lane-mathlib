import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure PlasticityPackage where
  yieldSurface : Type u
  vonMisesCriterion : Prop
  trescaCriterion : Prop
  hardeningLaw : Prop
  flowRule : Prop

structure PlasticityEvidence (P : PlasticityPackage) where
  vonMisesCriterionClosed : P.vonMisesCriterion
  trescaCriterionClosed : P.trescaCriterion
  hardeningLawClosed : P.hardeningLaw
  flowRuleClosed : P.flowRule

def PlasticityClosed (P : PlasticityPackage) : Prop :=
  P.vonMisesCriterion ∧ P.trescaCriterion ∧
  P.hardeningLaw ∧ P.flowRule

theorem plasticity_closed_from_evidence (P : PlasticityPackage)
    (E : PlasticityEvidence P) : PlasticityClosed P := by
  exact And.intro E.vonMisesCriterionClosed
    (And.intro E.trescaCriterionClosed
      (And.intro E.hardeningLawClosed E.flowRuleClosed))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse