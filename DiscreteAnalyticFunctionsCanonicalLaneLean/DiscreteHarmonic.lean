import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.DiscreteAnalyticFunction

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

/-!
# Discrete harmonic functions

This module defines discrete harmonic functions on the lattice ℤ²,
which satisfy the discrete Laplace equation.
-/

def discreteLaplacian (f : ℤ × ℤ → ℂ) (x y : ℤ) : ℂ :=
  f (x+1, y) + f (x-1, y) + f (x, y+1) + f (x, y-1) - 4 * f (x, y)

def discreteHarmonic (f : ℤ × ℤ → ℂ) : Prop :=
  ∀ (x y : ℤ), discreteLaplacian f x y = 0

theorem analytic_implies_harmonic (f : DiscreteAnalyticFunction) :
    discreteHarmonic f.u ∧ discreteHarmonic f.v := by
  intro x y
  sorry

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse