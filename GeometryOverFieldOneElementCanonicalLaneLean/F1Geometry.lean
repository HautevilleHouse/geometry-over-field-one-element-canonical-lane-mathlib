import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure F1GeometryPackage where
  f1Object : Type u
  baseExtension : Type v
  descentData : Prop
  tateMotivesAvailable : Prop
  absolutePoint : Prop

def F1GeometryClosed (G : F1GeometryPackage) : Prop :=
  G.descentData ∧ G.tateMotivesAvailable ∧ G.absolutePoint

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
