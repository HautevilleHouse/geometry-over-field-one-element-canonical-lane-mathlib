import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure AbsoluteMotivesPackage where
  motiveCategory : Type u
  tateObject : Type v
  weightStructure : Prop
  kunnethDecomposition : Prop
  realizationFunctor : Prop

def AbsoluteMotivesClosed (M : AbsoluteMotivesPackage) : Prop :=
  M.weightStructure ∧ M.kunnethDecomposition ∧ M.realizationFunctor

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
