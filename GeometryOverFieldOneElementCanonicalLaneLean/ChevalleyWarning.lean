import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure ChevalleyWarningPackage where
  chevalleyGroup : Type u
  weylGroupAction : Prop
  involutionProperty : Prop
  traceFormulaCheck : Prop

def ChevalleyWarningClosed (C : ChevalleyWarningPackage) : Prop :=
  C.weylGroupAction ∧ C.involutionProperty ∧ C.traceFormulaCheck

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse
