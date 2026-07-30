import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure ThermalTreatmentPackage where
  heatTreatmentCycle : Type u
  phaseTransformationKinetics : Prop
  hardnessPrediction : Prop
  residualStress : Prop
  quenchingMedium : Prop

structure ThermalTreatmentEvidence (T : ThermalTreatmentPackage) where
  phaseTransformationKineticsClosed : T.phaseTransformationKinetics
  hardnessPredictionClosed : T.hardnessPrediction
  residualStressClosed : T.residualStress
  quenchingMediumClosed : T.quenchingMedium

def ThermalTreatmentClosed (T : ThermalTreatmentPackage) : Prop :=
  T.phaseTransformationKinetics ∧ T.hardnessPrediction ∧ T.residualStress ∧ T.quenchingMedium

theorem thermal_treatment_closed_from_evidence (T : ThermalTreatmentPackage) (E : ThermalTreatmentEvidence T) :
    ThermalTreatmentClosed T := by
  exact And.intro E.phaseTransformationKineticsClosed
    (And.intro E.hardnessPredictionClosed
      (And.intro E.residualStressClosed E.quenchingMediumClosed))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse