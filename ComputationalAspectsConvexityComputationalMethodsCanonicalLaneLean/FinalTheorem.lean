import HautevilleHouse.ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

def ConstrainedComputationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_computation_endgame (A : AdmissibleClass) :
    ConstrainedComputationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse
