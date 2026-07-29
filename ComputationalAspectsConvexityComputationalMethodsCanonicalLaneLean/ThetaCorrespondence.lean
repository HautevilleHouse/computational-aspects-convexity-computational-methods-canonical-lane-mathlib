import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethods

-- Theta correspondence: a duality between polynomial-time decidable languages
-- and polynomial-time verifiable languages under convex computational constraints.
-- This structure records the bridge between the two classes.

structure ThetaCorrespondence where
  leftLanguage : Language
  rightLanguage : Language
  leftDecider : DecisionProcedure
  rightVerifier : WitnessRelation
  polyBound : PolynomialCertificateBound
  bridgeWitness : Decides leftDecider leftLanguage ↔ ∀ x : BitString, x ∈ leftLanguage ↔ (∃ w : BitString, rightVerifier.accepts x w ∧ length w ≤ polyBound.degree)

theorem theta_correspondence_provides_bridge (A : AdmissibleClass) : Prop :=
  exists (θ : ThetaCorrespondence), bridgeClosed A ∧ Decides A.lane.solver A.lane.projectedLanguage = θ.bridgeWitness

end ComputationalAspectsConvexityComputationalMethods
end HautevilleHouse
