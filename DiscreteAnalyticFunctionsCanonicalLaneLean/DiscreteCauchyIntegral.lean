import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.DiscreteAnalyticFunction

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

/-!
# Discrete Cauchy integral

This module defines a discrete analog of the Cauchy integral formula.
The integral is replaced by a sum over lattice points within a discrete contour.
-/

def discreteContourIntegral (f : ℤ × ℤ → ℂ) (gamma : List (ℤ × ℤ)) : ℂ :=
  List.foldl (fun acc (z : ℤ × ℤ) => acc + f z) 0 gamma

theorem discrete_cauchy_integral_formula (f : DiscreteAnalyticFunction) : Prop :=
  ∀ (a : ℤ × ℤ),
    -- Discrete version: average over neighbors equals value at center
    (f.u (a.1, a.2) = (f.u (a.1+1, a.2) + f.u (a.1-1, a.2) + f.u (a.1, a.2+1) + f.u (a.1, a.2-1)) / 4) ∧
    (f.v (a.1, a.2) = (f.v (a.1+1, a.2) + f.v (a.1-1, a.2) + f.v (a.1, a.2+1) + f.v (a.1, a.2-1)) / 4)

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse