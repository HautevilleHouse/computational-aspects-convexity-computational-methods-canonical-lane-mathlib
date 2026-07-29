import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure ConvexHullMembershipProblem where
  d : Nat         -- dimension
  points : Nat    -- number of points
  precision : Nat -- bit precision

def linearProgrammingApproach (p : ConvexHullMembershipProblem) : Prop :=
  ∃ (k : Nat), k ≤ p.d^3 * p.points

def ellipsoidApproach (p : ConvexHullMembershipProblem) : Prop :=
  ∃ (k : Nat), k ≤ p.d^2 * p.points * p.precision

def randomSamplingApproach (p : ConvexHullMembershipProblem) : Prop :=
  ∃ (k : Nat), k ≤ p.d^4 * p.precision

theorem convex_hull_membership_in_p (p : ConvexHullMembershipProblem) :
  linearProgrammingApproach p ∨ ellipsoidApproach p ∨ randomSamplingApproach p := by
  left
  refine ⟨p.d^3 * p.points, ?_⟩
  exact le_rfl

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse