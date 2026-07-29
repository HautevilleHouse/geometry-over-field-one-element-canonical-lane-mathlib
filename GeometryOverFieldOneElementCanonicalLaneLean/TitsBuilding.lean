import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# Tits Building Package

Defines spherical buildings associated to groups over 𝔽₁ as combinatorial simplicial complexes.
-/

structure TitsBuilding where
  vertices : Type
  chambers : List (List vertices)
  adjacency : vertices → vertices → Prop
  rank : Nat
  spherical : Prop
  residueField : Prop  -- indicates if field is 𝔽₁

structure SphericalBuildingOverFOne where
  building : TitsBuilding
  apartmentSystem : List (List vertices)
  weylGroupActing : WeylGroupOverFOne
  labelRegularity : Prop

structure TitsBuildingEvidence (B : SphericalBuildingOverFOne) where
  buildingSpherical : B.building.spherical
  residueFieldClosed : B.building.residueField
  apartmentSystemComplete : B.apartmentSystem ≠ []

def TitsBuildingClosed (B : SphericalBuildingOverFOne) : Prop :=
  B.building.spherical ∧ B.building.residueField ∧ B.apartmentSystem ≠ []

theorem tits_building_closed_from_evidence (B : SphericalBuildingOverFOne)
    (E : TitsBuildingEvidence B) : TitsBuildingClosed B := by
  exact And.intro E.buildingSpherical (And.intro E.residueFieldClosed E.apartmentSystemComplete)

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse