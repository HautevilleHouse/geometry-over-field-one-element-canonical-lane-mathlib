import GeometryOverFieldOneElementCanonicalLaneLean.F1GateLemmas

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

def ConstrainedF1Closure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_f1_endgame (A : AdmissibleClass) :
    ConstrainedF1Closure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse