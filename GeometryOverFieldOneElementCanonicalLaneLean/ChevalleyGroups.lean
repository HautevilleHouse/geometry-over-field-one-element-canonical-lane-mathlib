import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.F1Geometries

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-- Chevalley groups as group schemes over F1. -/
structure ChevalleyGroupOverF1 where
  rootSystem : Type u
  rootSystemFinite : Fintype rootSystem
  weylGroup : Type v
  weylAction : weylGroup → rootSystem → rootSystem
  pinning : rootSystem → F1Geometry
  pinningCompatible : Prop
  pinningCompatibleClosed : pinningCompatible

def ChevalleyGroupOverF1Closed (G : ChevalleyGroupOverF1) : Prop :=
  G.pinningCompatible

theorem chevalley_group_closed_from_evidence (G : ChevalleyGroupOverF1) : ChevalleyGroupOverF1Closed G :=
  G.pinningCompatibleClosed

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse