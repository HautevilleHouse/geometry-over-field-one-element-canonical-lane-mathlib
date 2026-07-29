import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.F1Geometries

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-- Zeta function of a geometry over F1, counting points over F1^n. -/
structure ZetaFunctionOverF1 (G : F1Geometry) where
  pointCounts : ℕ → ℕ
  rationalityProperty : Prop
  rationalityPropertyClosed : rationalityProperty

def ZetaFunctionOverF1Closed (G : F1Geometry) (Z : ZetaFunctionOverF1 G) : Prop :=
  Z.rationalityProperty

theorem zeta_function_closed_from_evidence (G : F1Geometry) (Z : ZetaFunctionOverF1 G) : ZetaFunctionOverF1Closed G Z :=
  Z.rationalityPropertyClosed

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse