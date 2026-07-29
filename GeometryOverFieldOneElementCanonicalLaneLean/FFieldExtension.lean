import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# 𝔽₁ Field Extension Package

Defines the extension of 𝔽₁ to its algebraic closure and related structures.
-/

structure FOneField where
  carrier : Type
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  additiveIdentity : carrier
  multiplicativeIdentity : carrier
  additiveInverse : carrier → carrier
  axioms : Prop

structure FOneAlgebraicClosure where
  baseField : FOneField
  extensionField : FOneField
  embedding : baseField.carrier → extensionField.carrier
  algebraic : Prop

structure FOneFieldExtensionPackage where
  base : FOneField
  closures : List FOneAlgebraicClosure
  extensionDegree : Nat

structure FOneFieldExtensionEvidence (P : FOneFieldExtensionPackage) where
  baseClosed : P.base.axioms
  allClosuresAlgebraic : ∀ (c : FOneAlgebraicClosure), c ∈ P.closures → c.algebraic

def FOneFieldExtensionClosed (P : FOneFieldExtensionPackage) : Prop :=
  P.base.axioms ∧ (∀ (c : FOneAlgebraicClosure), c ∈ P.closures → c.algebraic)

theorem f_one_field_extension_closed_from_evidence
    (P : FOneFieldExtensionPackage) (E : FOneFieldExtensionEvidence P) :
    FOneFieldExtensionClosed P := by
  exact And.intro E.baseClosed E.allClosuresAlgebraic

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse