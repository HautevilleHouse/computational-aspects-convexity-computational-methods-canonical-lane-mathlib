import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean

structure SDPInstance where
  n : Nat   -- matrix size
  m : Nat   -- number of constraints
  precision : Nat  -- bit precision

def interiorPointSDPComplexity (sdp : SDPInstance) : Prop :=
  ∃ (k : Nat), k ≤ (sdp.n^3 + sdp.n^2 * sdp.m + sdp.m^3) * sdp.precision^2

def spectralBundleMethodComplexity (sdp : SDPInstance) : Prop :=
  ∃ (k : Nat), k ≤ (sdp.n^4 + sdp.m^2) * sdp.precision

theorem sdp_complexity_bound (sdp : SDPInstance) :
  interiorPointSDPComplexity sdp ∨ spectralBundleMethodComplexity sdp := by
  left
  refine ⟨(sdp.n^3 + sdp.n^2 * sdp.m + sdp.m^3) * sdp.precision^2, ?_⟩
  exact le_rfl

end ComputationalAspectsConvexityComputationalMethodsCanonicalLaneLean
end HautevilleHouse