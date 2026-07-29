import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Projective spaces over F1
-/

structure F1ProjectiveSpace (n : ℕ) where
  points : F1Set
  lines : Type u
  incidence : points → lines → Prop
  projectiveAxioms : Prop

def F1ProjectiveSpaceClosed (n : ℕ) (P : F1ProjectiveSpace n) : Prop :=
  P.projectiveAxioms

theorem f1_projective_space_closed_from_axioms (n : ℕ) (P : F1ProjectiveSpace n) (h : P.projectiveAxioms) : F1ProjectiveSpaceClosed n P :=
  h

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse