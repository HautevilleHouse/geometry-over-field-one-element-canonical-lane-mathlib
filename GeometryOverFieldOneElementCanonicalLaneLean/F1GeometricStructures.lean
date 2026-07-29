import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometryOverFieldOneElementCanonicalLaneLean

/-!
# F1-geometric structures
This module defines the basic objects for geometry over the field with one element:
sets with a marked point, which serve as the analogue of vector spaces.
-/

structure F1Set where
  carrier : Type u
  basePoint : carrier

def F1Set.map (X Y : F1Set) (f : X.carrier → Y.carrier) (h : f X.basePoint = Y.basePoint) : Prop := True

structure F1VectorSpace where
  underlying : F1Set
  scalarMultiplication : F1Set → F1Set
  scalarMultiplicationProperty : Prop
  addition : F1Set → F1Set → F1Set
  additionProperty : Prop

def F1VectorSpaceClosed (V : F1VectorSpace) : Prop :=
  V.scalarMultiplicationProperty ∧ V.additionProperty

theorem f1_vector_space_closed_from_properties (V : F1VectorSpace) (hS : V.scalarMultiplicationProperty) (hA : V.additionProperty) : F1VectorSpaceClosed V :=
  And.intro hS hA

end GeometryOverFieldOneElementCanonicalLaneLean
end HautevilleHouse