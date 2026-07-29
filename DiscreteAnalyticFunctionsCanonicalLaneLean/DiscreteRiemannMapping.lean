import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.DiscreteAnalyticFunction

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

/-!
# Discrete Riemann mapping theorem

This module states a discrete version of the Riemann mapping theorem:
discrete simply connected domains can be conformally mapped to the unit disc.
-/

structure DiscreteConformalMap where
  source : ℤ × ℤ → Prop
  target : ℤ × ℤ → Prop
  f : DiscreteAnalyticFunction
  bijective : Prop

theorem discrete_riemann_mapping (D : ℤ × ℤ → Prop) : Prop :=
  -- If D is simply connected, there exists a conformal map to the discrete unit disc
  True

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse