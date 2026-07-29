import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure FunctorToF1 where
  sourceCategory : Type u
  targetCategory : Type v
  functorData : sourceCategory → targetCategory
  preservingStructure : Prop
  descentData : Prop

def FunctorToF1Closed (F : FunctorToF1) : Prop :=
  F.preservingStructure ∧ F.descentData

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
