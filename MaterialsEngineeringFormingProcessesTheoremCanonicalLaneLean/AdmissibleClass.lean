import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean

structure MaterialsEngineeringAdmittedObject where
  crystallography : CrystallographyPackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityPackage
  fracture : FractureMechanicsPackage
  forming : FormingProcessPackage
  conclusion : CrystallographyClosed crystallography ∧ PhaseDiagramClosed phaseDiagram ∧ ElasticityClosed elasticity ∧ FractureMechanicsClosed fracture ∧ FormingProcessClosed forming

end MaterialsEngineeringFormingProcessesTheoremCanonicalLaneLean
end HautevilleHouse