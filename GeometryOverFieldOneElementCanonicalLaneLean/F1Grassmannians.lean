import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Grassmannians over F1
-/

structure F1Grassmannian (n k : ℕ) where
  kPlanes : F1Set
  incidence : F1ProjectiveSpace (n-1) → F1Set
  grassmannianAxioms : Prop

def F1GrassmannianClosed (n k : ℕ) (G : F1Grassmannian n k) : Prop :=
  G.grassmannianAxioms

theorem f1_grassmannian_closed_from_axioms (n k : ℕ) (G : F1Grassmannian n k) (h : G.grassmannianAxioms) : F1GrassmannianClosed n k G :=
  h

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse