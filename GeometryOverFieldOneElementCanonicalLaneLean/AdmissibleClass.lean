import GeometryOverFieldOneElementCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure AdmissibleClass where
  object : F1Object
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  F1WitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse