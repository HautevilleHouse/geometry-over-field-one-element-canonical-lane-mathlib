import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure SymmetricPowerZetaPackage where
  symmetricPowerLSeries : Prop
  zetaFunction : Prop
  rationalPointsCount : Prop
  weilConjecturesAnalogue : Prop
  functionalEquation : Prop

def SymmetricPowerZetaClosed (S : SymmetricPowerZetaPackage) : Prop :=
  S.symmetricPowerLSeries ∧ S.zetaFunction ∧ S.rationalPointsCount ∧ S.weilConjecturesAnalogue ∧ S.functionalEquation

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
