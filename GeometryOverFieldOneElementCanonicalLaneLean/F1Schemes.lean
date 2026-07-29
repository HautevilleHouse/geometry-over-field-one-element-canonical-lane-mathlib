import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Schemes over F1
-/

structure F1Scheme where
  underlying : F1Set
  structureSheaf : Type u
  locallyAffine : Prop
  schemeAxioms : Prop

def F1SchemeClosed (S : F1Scheme) : Prop :=
  S.locallyAffine ∧ S.schemeAxioms

theorem f1_scheme_closed_from_properties (S : F1Scheme) (hL : S.locallyAffine) (hS : S.schemeAxioms) : F1SchemeClosed S :=
  And.intro hL hS

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse