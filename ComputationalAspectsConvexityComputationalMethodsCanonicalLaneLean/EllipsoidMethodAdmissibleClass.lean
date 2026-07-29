import canonicalLaneMathlib.AdmissibleClass
import ConvexOptimizationComplexity

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure EllipsoidAdmissibleClass (A : AdmissibleClass) where
  problem : ConvexOptimizationProblem
  ellipsoidComplexity : ellipsoidMethodComplexity problem

def ellipsoidBridgeClosed (A : AdmissibleClass) (E : EllipsoidAdmissibleClass A) : Prop :=
  ellipsoidMethodComplexity E.problem

theorem ellipsoid_bridge_from_admissible_class (A : AdmissibleClass) (E : EllipsoidAdmissibleClass A) :
  ellipsoidBridgeClosed A E := by
  exact E.ellipsoidComplexity

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse