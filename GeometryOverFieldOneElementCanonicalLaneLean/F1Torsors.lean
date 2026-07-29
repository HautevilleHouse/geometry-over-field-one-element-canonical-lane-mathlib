import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Torsors under F1-groups
-/

structure F1Group where
  underlying : F1Set
  multiplication : F1Set → F1Set → F1Set
  identity : F1Set
  inverse : F1Set → F1Set
  groupLaws : Prop

structure F1Torsor (G : F1Group) where
  underlying : F1Set
  action : G.underlying → underlying → underlying
  actionLaws : Prop

def F1TorsorClosed (G : F1Group) (T : F1Torsor G) : Prop :=
  T.actionLaws

theorem f1_torsor_closed_from_laws (G : F1Group) (T : F1Torsor G) (h : T.actionLaws) : F1TorsorClosed G T :=
  h

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse