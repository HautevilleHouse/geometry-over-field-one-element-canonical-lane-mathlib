import GeometryOverFieldOneElementCanonicalLaneLean.F1BridgeLemmas

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse