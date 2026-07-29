import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure F1Scheme where
  carrier : Type
  structureSheaf : Type
  topology : Prop
  definedOverF1 : Prop

structure F1AdmittedObject where
  scheme : F1Scheme
  f1RationalPoint : Prop
  absoluteGaloisGroupAction : Prop
  tateMotivesDefined : Prop
  conclusion : f1RationalPoint

def F1WitnessClosed (O : F1AdmittedObject) : Prop :=
  O.f1RationalPoint

structure AdmissibleClass where
  object : F1AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  F1WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse