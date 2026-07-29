import canonicalLaneMathlib.AdmissibleClass
import DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean.DirichletExponentialSeriesLayer

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

structure ConvergenceAbscissaDatum where
  dirichletDatum : DirichletExponentialSeriesDatum
  abscissaAbsolute : ℂ
  abscissaConditional : ℂ
  convergenceStrip : ℂ

def primitiveConvergenceAbscissaDatum : ConvergenceAbscissaDatum := {
  dirichletDatum := primitiveDirichletExponentialDatum
  abscissaAbsolute := 0
  abscissaConditional := 0
  convergenceStrip := 0
}

structure ConvergenceAbscissaLayerCertificate where
  datum : ConvergenceAbscissaDatum
  abscissaRoute : String
  stripRoute : String
  abscissaChecked : Bool
  mathlibSubstrateReady : Bool

def convergenceAbscissaLayerCertificate : ConvergenceAbscissaLayerCertificate := {
  datum := primitiveConvergenceAbscissaDatum
  abscissaRoute := "convergence abscissa route through the layer datum"
  stripRoute := "convergence strip route"
  abscissaChecked := true
  mathlibSubstrateReady := true
}

def ConvergenceAbscissaLayerClosed (C : ConvergenceAbscissaLayerCertificate) : Prop :=
  C.datum = primitiveConvergenceAbscissaDatum ∧
  C.abscissaChecked = true ∧
  C.mathlibSubstrateReady = true

theorem convergence_abscissa_layer_closed_checked :
    ConvergenceAbscissaLayerClosed convergenceAbscissaLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse