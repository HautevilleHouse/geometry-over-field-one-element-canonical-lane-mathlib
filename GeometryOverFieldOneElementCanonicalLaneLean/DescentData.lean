import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure DescentDataPackage where
  galoisDescent : Prop
  lambdaOperations : Prop
  frobeniusLift : Prop
  crystallineComparison : Prop

def DescentDataClosed (D : DescentDataPackage) : Prop :=
  D.galoisDescent ∧ D.lambdaOperations ∧ D.frobeniusLift ∧ D.crystallineComparison

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
