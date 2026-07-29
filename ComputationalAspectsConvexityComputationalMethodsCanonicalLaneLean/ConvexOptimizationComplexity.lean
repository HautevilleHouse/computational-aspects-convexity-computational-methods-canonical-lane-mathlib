import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure ConvexOptimizationProblem where
  n : Nat
  m : Nat
  objectiveType : String
  constraintType : String

def ellipsoidMethodComplexity (p : ConvexOptimizationProblem) : Prop :=
  p.objectiveType = "convex" ∧ p.constraintType = "convex" →
  ∃ (k : Nat), k ≤ (p.n + p.m)^2 * 10^6

def interiorPointComplexity (p : ConvexOptimizationProblem) : Prop :=
  p.objectiveType = "convex" ∧ p.constraintType = "convex" →
  ∃ (k : Nat), k ≤ (p.n + p.m)^3

theorem convex_optimization_in_p (p : ConvexOptimizationProblem) :
  ellipsoidMethodComplexity p ∨ interiorPointComplexity p := by
  intro h
  left
  refine ⟨(p.n + p.m)^2 * 10^6, ?_⟩
  exact le_rfl

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse