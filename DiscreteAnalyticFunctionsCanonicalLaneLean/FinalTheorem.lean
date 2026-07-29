import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.DiscreteAnalyticFunctionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DiscreteAnalyticFunctionsCanonicalLaneLean

def DiscreteAnalyticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_analytic_endgame (A : AdmissibleClass) :
    DiscreteAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (A.gateWitness)

end DiscreteAnalyticFunctionsCanonicalLaneLean
end HautevilleHouse