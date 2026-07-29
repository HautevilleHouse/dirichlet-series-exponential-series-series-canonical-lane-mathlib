import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse