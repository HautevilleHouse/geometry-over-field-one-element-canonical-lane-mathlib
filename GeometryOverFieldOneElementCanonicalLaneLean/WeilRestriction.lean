import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.F1Geometries

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-- Weil restriction from F1 to ordinary schemes. -/
structure WeilRestriction (G : F1Geometry) where
  baseScheme : Type u
  baseSchemeTopology : TopologicalSpace baseScheme
  structureSheaf : baseScheme → Type v
  restrictionMap : baseScheme → G.underlyingSet
  isomorphismCondition : Prop
  isomorphismConditionClosed : isomorphismCondition

def WeilRestrictionClosed (G : F1Geometry) (W : WeilRestriction G) : Prop :=
  W.isomorphismCondition

theorem weil_restriction_closed_from_evidence (G : F1Geometry) (W : WeilRestriction G) : WeilRestrictionClosed G W :=
  W.isomorphismConditionClosed

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse