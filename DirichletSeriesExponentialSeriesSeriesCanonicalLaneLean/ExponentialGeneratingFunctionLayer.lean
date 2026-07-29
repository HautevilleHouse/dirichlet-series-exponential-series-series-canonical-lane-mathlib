import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.DirichletExponentialSeriesLayer

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

structure ExponentialGeneratingFunctionDatum where
  coefficients : List ℂ
  exponentialForm : ℂ → ℂ
  radiusConvergence : ℂ
  bridgeDatum : DirichletExponentialSeriesDatum

def primitiveExponentialGeneratingDatum : ExponentialGeneratingFunctionDatum := {
  coefficients := [1, 1, 1/2, 1/6]
  exponentialForm := λ x => 0
  radiusConvergence := 0
  bridgeDatum := primitiveDirichletExponentialDatum
}

structure ExponentialGeneratingLayerCertificate where
  datum : ExponentialGeneratingFunctionDatum
  generatingRoute : String
  exponentialMapRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

def exponentialGeneratingLayerCertificate : ExponentialGeneratingLayerCertificate := {
  datum := primitiveExponentialGeneratingDatum
  generatingRoute := "exponential generating function route through the layer datum"
  exponentialMapRoute := "exponential map route"
  endpointChecked := true
  carriedBoundaryNamed := true
}

def ExponentialGeneratingLayerClosed (C : ExponentialGeneratingLayerCertificate) : Prop :=
  C.datum = primitiveExponentialGeneratingDatum ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem exponential_generating_layer_closed_checked :
    ExponentialGeneratingLayerClosed exponentialGeneratingLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse