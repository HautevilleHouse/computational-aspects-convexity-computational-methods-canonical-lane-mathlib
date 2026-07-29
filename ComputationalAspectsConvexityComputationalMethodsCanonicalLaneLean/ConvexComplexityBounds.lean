import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethods

-- Convex complexity bounds: captures the idea that the complexity measure is convex
-- (i.e., for any two problems, the complexity of combining them is at most the sum).

structure ConvexComplexityBounds where
  complexityFunction : Language → ℕ
  convexProof : ∀ L1 L2 : Language, complexityFunction (L1 ∪ L2) ≤ complexityFunction L1 + complexityFunction L2
  zeroLanguage : Language
  zeroComplexity : complexityFunction zeroLanguage = 0

theorem convex_bridge_provides_closure (A : AdmissibleClass) (C : ConvexComplexityBounds) :
  (∃ L : Language, Decides A.lane.solver L ∧ L ∈ A.lane.projectedLanguage) → (bridgeClosed A ∧ gateClosed A) := by
  intro h
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsConvexityComputationalMethods
end HautevilleHouse
