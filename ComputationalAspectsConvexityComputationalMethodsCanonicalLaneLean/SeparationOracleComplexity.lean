import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure SeparationOracleProblem where
  n : Nat
  oracleCalls : Nat
  dimension : Nat

def cuttingPlaneComplexity (p : SeparationOracleProblem) : Prop :=
  p.oracleCalls ≤ p.n^2

def centerOfGravityComplexity (p : SeparationOracleProblem) : Prop :=
  p.oracleCalls ≤ p.n * p.dimension

theorem separation_oracle_in_p (p : SeparationOracleProblem) :
  cuttingPlaneComplexity p ∨ centerOfGravityComplexity p := by
  intro h
  left
  exact h

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse