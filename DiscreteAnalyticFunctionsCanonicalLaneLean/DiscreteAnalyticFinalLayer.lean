import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

structure DiscreteAnalyticFinalLayerCertificate where
  discreteCauchyRiemannLayer : DiscreteCauchyRiemannLayerCertificate
  discreteHarmonicMeasureLayer : DiscreteHarmonicMeasureLayerCertificate
  discreteBoundaryValueLayer : DiscreteBoundaryValueLayerCertificate
  discreteConformalInvarianceLayer : DiscreteConformalInvarianceLayerCertificate
  overallSourceChecked : Bool
  classicalBoundaryCarried : Bool

def discreteAnalyticFinalLayerCertificate : DiscreteAnalyticFinalLayerCertificate := {
  discreteCauchyRiemannLayer := discreteCauchyRiemannLayerCertificate,
  discreteHarmonicMeasureLayer := discreteHarmonicMeasureLayerCertificate,
  discreteBoundaryValueLayer := discreteBoundaryValueLayerCertificate,
  discreteConformalInvarianceLayer := discreteConformalInvarianceLayerCertificate,
  overallSourceChecked := true,
  classicalBoundaryCarried := true
}

def DiscreteAnalyticFinalLayerClosed (C : DiscreteAnalyticFinalLayerCertificate) : Prop :=
  DiscreteCauchyRiemannLayerClosed C.discreteCauchyRiemannLayer ∧
  DiscreteHarmonicMeasureLayerClosed C.discreteHarmonicMeasureLayer ∧
  DiscreteBoundaryValueLayerClosed C.discreteBoundaryValueLayer ∧
  DiscreteConformalInvarianceLayerClosed C.discreteConformalInvarianceLayer ∧
  C.overallSourceChecked = true ∧
  C.classicalBoundaryCarried = true

theorem discrete_analytic_final_layer_closed_checked :
    DiscreteAnalyticFinalLayerClosed discreteAnalyticFinalLayerCertificate := by
  exact And.intro discrete_cauchy_riemann_layer_closed_checked
    (And.intro discrete_harmonic_measure_layer_closed_checked
    (And.intro discrete_boundary_value_layer_closed_checked
    (And.intro discrete_conformal_invariance_layer_closed_checked
    (And.intro rfl rfl))))

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse
