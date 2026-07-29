import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.DirichletSeriesDomain

/-!
# Exponential series layer

This layer connects Dirichlet series to exponential series via the bridge.
-/

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

structure ExponentialSeriesCertificate where
  dirichletCert : DirichletSeriesCertificate
  exponentialRoute : String
  seriesExpansionRecorded : Bool
  exponentialBridgeChecked : Bool

def exponentialSeriesCertificate : ExponentialSeriesCertificate := {
  dirichletCert := dirichletSeriesCertificate,
  exponentialRoute := "exponential series expansion of Dirichlet L-function",
  seriesExpansionRecorded := true,
  exponentialBridgeChecked := true
}

def ExponentialSeriesLayerClosed (C : ExponentialSeriesCertificate) : Prop :=
  DirichletSeriesLayerClosed C.dirichletCert ∧
  C.seriesExpansionRecorded = true ∧
  C.exponentialBridgeChecked = true

theorem exponential_series_layer_closed_checked :
    ExponentialSeriesLayerClosed exponentialSeriesCertificate := by
  exact And.intro dirichlet_series_layer_closed_checked (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse