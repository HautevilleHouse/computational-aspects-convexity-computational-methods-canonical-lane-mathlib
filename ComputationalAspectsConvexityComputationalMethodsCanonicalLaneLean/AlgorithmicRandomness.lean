import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethods

-- Algorithmic randomness: records the admissible class of algorithmically random sequences
-- and their relationship with computational decidability.

structure AlgorithmicRandomness where
  randomLanguage : Language
  randomnessTest : (BitString → Prop) → Prop
  testPassed : Prop
  randomnessWitness : Prop
  remainder : Prop

definition randomLanguageClosed (A : AdmissibleClass) (R : AlgorithmicRandomness) : Prop :=
  (∀ x : BitString, x ∈ R.randomLanguage → R.randomnessTest (λ y => y ∈ A.lane.projectedLanguage)) ∧
  (R.randomnessWitness → Decides A.lane.solver A.lane.projectedLanguage)

theorem algorithmic_randomness_bridge (A : AdmissibleClass) (R : AlgorithmicRandomness) :
  randomLanguageClosed A R → (bridgeClosed A ∧ gateClosed A) := by
  intro h
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsConvexityComputationalMethods
end HautevilleHouse
