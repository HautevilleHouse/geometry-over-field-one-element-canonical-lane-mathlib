import GeometryOverFieldOneElementCanonicalLaneLean.F1TateMotives

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure F1AbsoluteGaloisGroupPackage (O : F1AdmittedObject) where
  galoisGroup : Type
  cyclotomicCharacter : Type
  actionOnTateTwists : Prop
  frobeniusActionDefined : Prop
  monodromyStructure : Prop

structure F1AbsoluteGaloisGroupEvidence (O : F1AdmittedObject)
    (G : F1AbsoluteGaloisGroupPackage O) where
  actionOnTateTwistsClosed : G.actionOnTateTwists
  frobeniusActionDefinedClosed : G.frobeniusActionDefined
  monodromyStructureClosed : G.monodromyStructure

def F1AbsoluteGaloisGroupClosed (O : F1AdmittedObject)
    (G : F1AbsoluteGaloisGroupPackage O) : Prop :=
  G.actionOnTateTwists ∧ G.frobeniusActionDefined ∧ G.monodromyStructure

theorem f1_absolute_galois_group_closed_from_evidence (O : F1AdmittedObject)
    (G : F1AbsoluteGaloisGroupPackage O) (E : F1AbsoluteGaloisGroupEvidence O G) :
    F1AbsoluteGaloisGroupClosed O G := by
  exact And.intro E.actionOnTateTwistsClosed
    (And.intro E.frobeniusActionDefinedClosed E.monodromyStructureClosed)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse