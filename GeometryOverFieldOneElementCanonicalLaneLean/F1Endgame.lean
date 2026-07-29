import canonicalLaneMathlib.AdmissibleClass
import GeometryOverFieldOneElementCanonicalLaneLean.F1Schemes

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

def F1GeometryAdmissibleClass (A : AdmissibleClass) : Prop :=
  let s : F1Scheme := { underlying := { carrier := A.object, basePoint := A.object }, structureSheaf := (), locallyAffine := True, schemeAxioms := True }
  F1SchemeClosed s

theorem f1_geometry_admissible_class (A : AdmissibleClass) : F1GeometryAdmissibleClass A :=
  by
    unfold F1GeometryAdmissibleClass F1SchemeClosed
    trivial

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse