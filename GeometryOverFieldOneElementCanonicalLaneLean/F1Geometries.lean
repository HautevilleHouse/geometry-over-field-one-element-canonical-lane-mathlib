import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-- A structure representing a geometry over the field with one element (F1).
    This is based on the notion of a monoid scheme or a pointed set with extra structure. -/
structure F1Geometry where
  underlyingSet : Type u
  basePoint : underlyingSet
  monoidAction : underlyingSet → underlyingSet → underlyingSet
  actionAssociative : ∀ a b c : underlyingSet, monoidAction (monoidAction a b) c = monoidAction a (monoidAction b c)
  basePointNeutralLeft : ∀ a : underlyingSet, monoidAction basePoint a = a
  basePointNeutralRight : ∀ a : underlyingSet, monoidAction a basePoint = a

def F1GeometryClosed (G : F1Geometry) : Prop :=
  G.actionAssociative ∧ G.basePointNeutralLeft ∧ G.basePointNeutralRight

theorem f1_geometry_closed_from_evidence (G : F1Geometry) : F1GeometryClosed G :=
  And.intro G.actionAssociative (And.intro G.basePointNeutralLeft G.basePointNeutralRight)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse