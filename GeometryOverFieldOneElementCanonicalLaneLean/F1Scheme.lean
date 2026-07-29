import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# 𝔽₁ Scheme Package

Defines schemes over the field with one element using Toën–Vaquié or similar approach.
-/

structure MonoidScheme where
  underlyingMonoid : Type
  structureSheaf : Prop
  zariskiTopology : Prop
  affinePatches : List (Type → Type)

structure FOneScheme where
  monoidScheme : MonoidScheme
  baseField : FOneField
  morphismsToBase : Prop
  torified : Prop  -- admits a torus model

structure FOneSchemeEvidence (S : FOneScheme) where
  monoidSchemeClosed : S.monoidScheme.structureSheaf
  morphismsToBaseClosed : S.morphismsToBase
  torifiedClosed : S.torified

def FOneSchemeClosed (S : FOneScheme) : Prop :=
  S.monoidScheme.structureSheaf ∧ S.morphismsToBase ∧ S.torified

theorem f_one_scheme_closed_from_evidence (S : FOneScheme) (E : FOneSchemeEvidence S) :
    FOneSchemeClosed S := by
  exact And.intro E.monoidSchemeClosed (And.intro E.morphismsToBaseClosed E.torifiedClosed)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse