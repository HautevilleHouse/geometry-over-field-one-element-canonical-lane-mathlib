import GeometryOverFieldOneElementCanonicalLaneLean.F1GeometryAdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

structure F1TateMotivesPackage (O : F1AdmittedObject) where
  motiveCategory : Type
  tateTwist : Type
  galoisRepresentations : Type
  weightGradingFiltration : Prop
  absoluteMotivicFiltration : Prop

structure F1TateMotivesEvidence (O : F1AdmittedObject) (M : F1TateMotivesPackage O) where
  weightGradingFiltrationClosed : M.weightGradingFiltration
  absoluteMotivicFiltrationClosed : M.absoluteMotivicFiltration

def F1TateMotivesClosed (O : F1AdmittedObject) (M : F1TateMotivesPackage O) : Prop :=
  M.weightGradingFiltration ∧ M.absoluteMotivicFiltration

theorem f1_tate_motives_closed_from_evidence (O : F1AdmittedObject) (M : F1TateMotivesPackage O)
    (E : F1TateMotivesEvidence O M) : F1TateMotivesClosed O M := by
  exact And.intro E.weightGradingFiltrationClosed E.absoluteMotivicFiltrationClosed

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse