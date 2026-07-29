import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Weyl Group Package over 𝔽₁

Models Weyl groups as combinatorial objects derived from root systems over 𝔽₁.
-/

structure RootSystem where
  rootSpace : Type
  roots : List rootSpace
  pairing : rootSpace → rootSpace → ℤ
  simpleRoots : List rootSpace
  rank : Nat

structure WeylGroup where
  generators : List (ℕ → ℕ)  -- permutations
  relations : List (ℕ × ℕ × ℕ)
  finite : Prop
  coxeterMatrix : Matrix ℕ ℕ ℕ

structure WeylGroupOverFOne where
  rootSystem : RootSystem
  weylGroup : WeylGroup
  fOneStructure : Bool  -- true if structure constants defined over 𝔽₁
  bruhatOrder : Prop

structure WeylGroupEvidence (W : WeylGroupOverFOne) where
  rootSystemClosed : W.rootSystem.rootSpace ≠ Empty
  weylGroupFinite : W.weylGroup.finite
  fOneStructureClosed : W.fOneStructure

def WeylGroupClosed (W : WeylGroupOverFOne) : Prop :=
  W.rootSystem.rootSpace ≠ Empty ∧ W.weylGroup.finite ∧ W.fOneStructure

theorem weyl_group_closed_from_evidence (W : WeylGroupOverFOne) (E : WeylGroupEvidence W) :
    WeylGroupClosed W := by
  exact And.intro E.rootSystemClosed (And.intro E.weylGroupFinite E.fOneStructureClosed)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse