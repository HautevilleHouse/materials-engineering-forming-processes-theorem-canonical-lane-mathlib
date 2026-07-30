import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure ElasticityAndFracturePackage where
  stressTensor : Type u
  strainTensor : Type v
  hookesLaw : Prop
  youngsModulus : ℝ
  poissonsRatio : ℝ
  yieldCriterion : Prop
  fractureToughness : ℝ
  crackPropagation : Prop

structure ElasticityAndFractureEvidence (E : ElasticityAndFracturePackage) where
  hookesLawClosed : E.hookesLaw
  yieldCriterionClosed : E.yieldCriterion
  crackPropagationClosed : E.crackPropagation

def ElasticityAndFractureClosed (E : ElasticityAndFracturePackage) : Prop :=
  E.hookesLaw ∧ E.yieldCriterion ∧ E.crackPropagation

theorem elasticity_and_fracture_closed_from_evidence
    (E : ElasticityAndFracturePackage) (Ev : ElasticityAndFractureEvidence E) :
    ElasticityAndFractureClosed E := by
  exact And.intro Ev.hookesLawClosed
    (And.intro Ev.yieldCriterionClosed Ev.crackPropagationClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse
