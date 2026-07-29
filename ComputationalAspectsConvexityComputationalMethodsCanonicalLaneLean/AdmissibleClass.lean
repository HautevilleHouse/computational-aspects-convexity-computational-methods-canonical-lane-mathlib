import HautevilleHouse.ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure AdmissibleClass where
  lane : ComputationAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := 
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse
