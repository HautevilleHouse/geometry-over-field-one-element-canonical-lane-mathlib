import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.FieldOneFTheory
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.FunctorsToF1
import HautevilleHouse.GeometryOverFieldOneElementCanonicalLaneLean.TitsBuildings

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

def FieldOneClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem field_one_endgame (A : AdmissibleClass) :
    FieldOneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
