import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure TitsWeilBridgePackage where
  titsBuildings : Prop
  weilDescent : Prop
  combinatorialCohomology : Prop
  traceFormula : Prop

def TitsWeilBridgeClosed (T : TitsWeilBridgePackage) : Prop :=
  T.titsBuildings ∧ T.weilDescent ∧ T.combinatorialCohomology ∧ T.traceFormula

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
