import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Complex.Basic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

/-!
# Discrete analytic functions

This module defines the central object of study: discrete complex-valued functions
on the integer lattice ℤ² that satisfy a discrete version of the Cauchy–Riemann equations.
-/

structure DiscreteComplexFunction where
  domain : ℤ × ℤ → Prop
  f : ℤ × ℤ → ℂ

def discreteCauchyRiemann (u v : ℤ × ℤ → ℂ) : Prop :=
  ∀ (x y : ℤ), (u (x, y) - u (x-1, y)) = (v (x, y) - v (x, y-1)) ∧
               (u (x, y) - u (x, y-1)) = -(v (x, y) - v (x-1, y))

structure DiscreteAnalyticFunction where
  u : ℤ × ℤ → ℂ
  v : ℤ × ℤ → ℂ
  crSatisfied : discreteCauchyRiemann u v

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse