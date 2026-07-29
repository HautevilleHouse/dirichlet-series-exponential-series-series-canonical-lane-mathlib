import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean

structure DirichletExponentialData where
  indexKey : Nat
  growthBound : Real
  convergenceAbscissa : Real
  exponentClassKey : String

defaultGrowthBound : Real := 1.0

structure ExponentialSeriesCertificate where
  baseExponential : Real
  rateParameter : Real
  truncationBound : Nat
  convergenceChecked : Bool

defaultExponentialCertificate : ExponentialSeriesCertificate := {
  baseExponential := Real.exp 1,
  rateParameter := 0.5,
  truncationBound := 100,
  convergenceChecked := true
}

end DirichletSeriesExponentialSeriesSeriesCanonicalLaneLean
end HautevilleHouse