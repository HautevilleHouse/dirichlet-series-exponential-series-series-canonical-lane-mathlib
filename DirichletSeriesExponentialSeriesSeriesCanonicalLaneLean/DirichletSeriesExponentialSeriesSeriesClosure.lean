import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.DirichletCharacterLayer
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.ExponentialSeriesBridge
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.GaussSumLayer
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.LFunctionEndpointLayer
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.FunctionalEquationLayer

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

def DirichletSeriesExponentialSeriesSeriesAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧
  DirichletCharacterLayerClosed dirichletCharacterLayerCertificate ∧
  ExponentialSeriesBridgeClosed exponentialSeriesBridgeCertificate ∧
  GaussSumLayerClosed gaussSumLayerCertificate ∧
  LFunctionEndpointLayerClosed lFunctionEndpointLayerCertificate ∧
  FunctionalEquationLayerClosed functionalEquationLayerCertificate

theorem dirichlet_series_exponential_series_series_admissible_endgame (A : AdmissibleClass) :
    DirichletSeriesExponentialSeriesSeriesAdmissibleClosure A := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A
  · refine And.intro dirichlet_character_layer_closed_checked
      (And.intro exponential_series_bridge_closed_checked
      (And.intro gauss_sum_layer_closed_checked
      (And.intro l_function_endpoint_layer_closed_checked
        functional_equation_layer_closed_checked)))

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse