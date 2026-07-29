import GeometryOverFieldOneElementCanonicalLaneLean.F1AbsoluteGaloisGroup

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure F1SoulieTheoryPackage (O : F1AdmittedObject) where
  additiveHopfAlgebra : Prop
  affineGroupScheme : Type
  descentData : Prop
  f1StructureSheaf : Prop
  prounipotentCompletion : Prop

structure F1SoulieTheoryEvidence (O : F1AdmittedObject)
    (S : F1SoulieTheoryPackage O) where
  additiveHopfAlgebraClosed : S.additiveHopfAlgebra
  descentDataClosed : S.descentData
  f1StructureSheafClosed : S.f1StructureSheaf
  prounipotentCompletionClosed : S.prounipotentCompletion

def F1SoulieTheoryClosed (O : F1AdmittedObject) (S : F1SoulieTheoryPackage O) : Prop :=
  S.additiveHopfAlgebra ∧ S.descentData ∧ S.f1StructureSheaf ∧ S.prounipotentCompletion

theorem f1_soulie_theory_closed_from_evidence (O : F1AdmittedObject)
    (S : F1SoulieTheoryPackage O) (E : F1SoulieTheoryEvidence O S) :
    F1SoulieTheoryClosed O S := by
  exact And.intro E.additiveHopfAlgebraClosed
    (And.intro E.descentDataClosed
      (And.intro E.f1StructureSheafClosed E.prounipotentCompletionClosed))

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse