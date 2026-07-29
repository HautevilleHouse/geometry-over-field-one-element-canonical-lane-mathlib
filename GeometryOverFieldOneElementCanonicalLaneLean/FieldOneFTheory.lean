import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure FieldOneObject where
  baseScheme : Type u
  affineLine : Type v
  frobeniusAction : Prop
  tateModule : Type w
  rationalPointCount : Nat
  geometricClass : Prop

def FieldOneWitnessClosed (O : FieldOneObject) : Prop := O.geometricClass

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
