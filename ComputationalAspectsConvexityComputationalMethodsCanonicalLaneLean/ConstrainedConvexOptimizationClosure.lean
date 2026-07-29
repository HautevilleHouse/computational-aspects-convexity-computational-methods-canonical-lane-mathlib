import canonicalLaneMathlib.AdmissibleClass
import EllipsoidMethodAdmissibleClass
import SeparationOracleComplexity

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

def convexOptimizationBridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (E : EllipsoidAdmissibleClass A), ellipsoidBridgeClosed A E

def convexOptimizationGateClosed (A : AdmissibleClass) : Prop :=
  ∃ (p : SeparationOracleProblem), cuttingPlaneComplexity p ∧ centerOfGravityComplexity p

def ConstrainedConvexOptimizationClosure (A : AdmissibleClass) : Prop :=
  convexOptimizationBridgeClosed A ∧ convexOptimizationGateClosed A

theorem constrained_convex_optimization_endgame (A : AdmissibleClass) :
  ConstrainedConvexOptimizationClosure A := by
  constructor
  · -- Need to construct an EllipsoidAdmissibleClass A
    sorry
  · -- Need to exhibit a SeparationOracleProblem
    sorry

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse