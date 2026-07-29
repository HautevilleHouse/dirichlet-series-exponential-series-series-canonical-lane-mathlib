import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.ExponentialLayerClosure

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

def ConstrainedDirichletExponentialClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_exponential_endgame (A : AdmissibleClass) :
    ConstrainedDirichletExponentialClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse