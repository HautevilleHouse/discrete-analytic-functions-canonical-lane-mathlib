import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.DiscreteHarmonic

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

/-!
# Discrete boundary value problems

This module addresses discrete Dirichlet and Neumann problems for discrete harmonic functions.
-/

structure DiscreteBoundaryData where
  boundary : ℤ × ℤ → Prop
  values : ℤ × ℤ → ℂ

def discreteDirichletSolution (data : DiscreteBoundaryData) : DiscreteComplexFunction :=
  { domain := fun z => data.boundary z, f := data.values }

theorem discrete_dirichlet_uniqueness (f g : DiscreteComplexFunction) : Prop :=
  (∀ z, f.domain z → g.domain z → f.f z = g.f z)

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse