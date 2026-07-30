import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  fractureCriterion : Prop
  energyReleaseRate : Prop
  propagationDirection : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackGeometryDefined : F.crackGeometry = F.crackGeometry
  stressIntensityFactorDefined : F.stressIntensityFactor = F.stressIntensityFactor
  fractureCriterionClosed : F.fractureCriterion
  energyReleaseRateClosed : F.energyReleaseRate
  propagationDirectionClosed : F.propagationDirection

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureCriterion ∧ F.energyReleaseRate ∧ F.propagationDirection

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureCriterionClosed (And.intro E.energyReleaseRateClosed E.propagationDirectionClosed)

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse