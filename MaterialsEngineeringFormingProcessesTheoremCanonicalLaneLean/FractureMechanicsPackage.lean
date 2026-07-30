import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagation : Prop
  fractureToughness : Prop
  fatigueLife : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationClosed : F.crackPropagation
  fractureToughnessClosed : F.fractureToughness
  fatigueLifeClosed : F.fatigueLife
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagation ∧ F.fractureToughness ∧ F.fatigueLife ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackPropagationClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.fatigueLifeClosed E.parisLawClosed))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse