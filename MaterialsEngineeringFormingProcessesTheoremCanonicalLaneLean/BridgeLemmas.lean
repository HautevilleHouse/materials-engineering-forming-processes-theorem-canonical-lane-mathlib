import HautevilleHouse.MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean.MaterialsEngineeringFormingProcessesObjects

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FormingProcessesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse