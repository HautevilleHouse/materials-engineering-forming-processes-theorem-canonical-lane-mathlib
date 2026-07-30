import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure ElasticityPlasticityPackage where
  stressStrainCurve : Prop
  yieldCriterion : Prop
  hardeningLaw : Prop
  elasticModulusDerived : Prop
  plasticStrainComputed : Prop

structure ElasticityPlasticityEvidence (E : ElasticityPlasticityPackage) where
  stressStrainCurveClosed : E.stressStrainCurve
  yieldCriterionClosed : E.yieldCriterion
  hardeningLawClosed : E.hardeningLaw
  elasticModulusDerivedClosed : E.elasticModulusDerived
  plasticStrainComputedClosed : E.plasticStrainComputed

def ElasticityPlasticityClosed (E : ElasticityPlasticityPackage) : Prop :=
  E.stressStrainCurve ∧ E.yieldCriterion ∧ E.hardeningLaw ∧ E.elasticModulusDerived ∧ E.plasticStrainComputed

theorem elasticity_plasticity_closed_from_evidence (E : ElasticityPlasticityPackage) (Ev : ElasticityPlasticityEvidence E) :
    ElasticityPlasticityClosed E := by
  exact And.intro Ev.stressStrainCurveClosed (And.intro Ev.yieldCriterionClosed (And.intro Ev.hardeningLawClosed (And.intro Ev.elasticModulusDerivedClosed Ev.plasticStrainComputedClosed)))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse