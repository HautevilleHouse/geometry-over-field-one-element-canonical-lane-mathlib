import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure TitsBuilding where
  apartmentSystem : Type u
  chamberSet : Type v
  galleryConnected : Prop
  weylGroupAction : Prop
  sphericalBuilding : Prop

def TitsBuildingClosed (T : TitsBuilding) : Prop :=
  T.galleryConnected ∧ T.weylGroupAction ∧ T.sphericalBuilding

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
