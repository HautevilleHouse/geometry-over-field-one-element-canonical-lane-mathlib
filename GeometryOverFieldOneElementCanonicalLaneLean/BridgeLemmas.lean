import GeometryOverFieldOneElementCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  F1WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse