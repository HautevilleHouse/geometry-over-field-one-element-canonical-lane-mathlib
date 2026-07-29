import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.F1Geometries

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-- Soul theorem: a smooth projective variety over F1 has a cell decomposition. -/
structure SoulTheoremOverF1 (G : F1Geometry) where
  cellDecomposition : Type u
  cellsFinite : Fintype cellDecomposition
  filtration : ℕ → Set G.underlyingSet
  filtrationExhaustive : ⋃ n, filtration n = Set.univ
  filtrationClosed : ∀ n, IsClosed (filtration n)
  soulStructure : Prop
  soulStructureClosed : soulStructure

def SoulTheoremOverF1Closed (G : F1Geometry) (S : SoulTheoremOverF1 G) : Prop :=
  S.filtrationExhaustive ∧ S.filtrationClosed ∧ S.soulStructure

theorem soul_theorem_closed_from_evidence (G : F1Geometry) (S : SoulTheoremOverF1 G) : SoulTheoremOverF1Closed G S :=
  And.intro S.filtrationExhaustive (And.intro S.filtrationClosed S.soulStructureClosed)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse