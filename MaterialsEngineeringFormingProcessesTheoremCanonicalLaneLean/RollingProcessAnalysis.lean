import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure RollingProcessPackage where
  rollGeometry : Prop
  materialFlowStress : Prop
  rollForceComputed : Prop
  torqueRequirement : Prop
  temperatureDistribution : Prop
  finalMicrostructure : Prop

structure RollingProcessEvidence (R : RollingProcessPackage) where
  rollGeometryClosed : R.rollGeometry
  materialFlowStressClosed : R.materialFlowStress
  rollForceComputedClosed : R.rollForceComputed
  torqueRequirementClosed : R.torqueRequirement
  temperatureDistributionClosed : R.temperatureDistribution
  finalMicrostructureClosed : R.finalMicrostructure

def RollingProcessClosed (R : RollingProcessPackage) : Prop :=
  R.rollGeometry ∧ R.materialFlowStress ∧ R.rollForceComputed ∧ R.torqueRequirement ∧ R.temperatureDistribution ∧ R.finalMicrostructure

theorem rolling_process_closed_from_evidence (R : RollingProcessPackage) (E : RollingProcessEvidence R) :
    RollingProcessClosed R := by
  exact And.intro E.rollGeometryClosed (And.intro E.materialFlowStressClosed (And.intro E.rollForceComputedClosed (And.intro E.torqueRequirementClosed (And.intro E.temperatureDistributionClosed E.finalMicrostructureClosed))))

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse