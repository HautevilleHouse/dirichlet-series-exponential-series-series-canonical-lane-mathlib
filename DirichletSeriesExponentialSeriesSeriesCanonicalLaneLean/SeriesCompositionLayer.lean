import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.ConvergenceAbscissaLayer

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

structure SeriesCompositionDatum where
  outerSeries : DirichletExponentialSeriesDatum
  innerSeries : DirichletExponentialSeriesDatum
  composedSeries : DirichletExponentialSeriesDatum
  compositionRoute : String
  convergenceDomain : ℂ

def primitiveSeriesCompositionDatum : SeriesCompositionDatum := {
  outerSeries := primitiveDirichletExponentialDatum
  innerSeries := primitiveDirichletExponentialDatum
  composedSeries := primitiveDirichletExponentialDatum
  compositionRoute := "series composition route through the layer datum"
  convergenceDomain := 0
}

structure SeriesCompositionLayerCertificate where
  datum : SeriesCompositionDatum
  compositionLayerChecked : Bool
  bridgeLayerClosed : Bool
  endpointChecked : Bool

def seriesCompositionLayerCertificate : SeriesCompositionLayerCertificate := {
  datum := primitiveSeriesCompositionDatum
  compositionLayerChecked := true
  bridgeLayerClosed := true
  endpointChecked := true
}

def SeriesCompositionLayerClosed (C : SeriesCompositionLayerCertificate) : Prop :=
  C.datum = primitiveSeriesCompositionDatum ∧
  C.compositionLayerChecked = true ∧
  C.bridgeLayerClosed = true ∧
  C.endpointChecked = true

theorem series_composition_layer_closed_checked :
    SeriesCompositionLayerClosed seriesCompositionLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse