import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Point Counting Package over 𝔽₁

Counts rational points of varieties over 𝔽₁ using zeta functions.
-/

structure ZetaFunction where
  commutative : Prop
  functionalEquation : Prop
  rational : Prop
  polynomialPart : Poly ℚ

structure RationalPointCount where
  dimension : Nat
  zeroPointCount : ℕ
  onePointCount : ℕ
  formula : String

structure PointCountingOverFOne where
  variety : String
  zetaFunction : ZetaFunction
  pointCounts : RationalPointCount
  compatibility : Prop

structure PointCountingEvidence (P : PointCountingOverFOne) where
  zetaRational : P.zetaFunction.rational
  functionalEquationClosed : P.zetaFunction.functionalEquation
  pointCountsClosed : P.pointCounts.zeroPointCount = 1 ∧ P.pointCounts.onePointCount = 2^P.pointCounts.dimension


def PointCountingClosed (P : PointCountingOverFOne) : Prop :=
  P.zetaFunction.rational ∧ P.zetaFunction.functionalEquation ∧
  (P.pointCounts.zeroPointCount = 1 ∧ P.pointCounts.onePointCount = 2^P.pointCounts.dimension)

theorem point_counting_closed_from_evidence (P : PointCountingOverFOne)
    (E : PointCountingEvidence P) : PointCountingClosed P := by
  exact And.intro E.zetaRational (And.intro E.functionalEquationClosed E.pointCountsClosed)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse