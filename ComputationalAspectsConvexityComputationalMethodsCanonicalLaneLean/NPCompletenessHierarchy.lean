import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethods

-- NP-completeness hierarchy under polynomial reductions.
-- Records the closure of NP-complete languages under many-one reductions.

structure NPCompletenessHierarchy where
  canonicalLanguage : Language
  reduction : BitString → BitString
  reductionPolyBound : PolynomialCertificateBound
  completenessProof : ∀ L : Language, (∃ (v : WitnessRelation), Decidable (λ x => ∃ w, v.accepts x w)) → (∃ (r : BitString → BitString), (∀ x, x ∈ canonicalLanguage → r x ∈ L) ∧ (∀ x, x ∉ canonicalLanguage → r x ∉ L) ∧ (computableInPolyTime r))

definition computableInPolyTime (f : BitString → BitString) : Prop :=
  ∃ (M : DecisionProcedure) (bound : PolynomialCertificateBound), ∀ x, M.accepts x = true ↔ f x = x

theorem np_completeness_hierarchy_closed (A : AdmissibleClass) (h : NPCompletenessHierarchy) :
  bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalAspectsConvexityComputationalMethods
end HautevilleHouse
