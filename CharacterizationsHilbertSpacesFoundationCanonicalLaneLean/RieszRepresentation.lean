import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure HilbertSpace where
  carrier : Type u
  inner : carrier → carrier → ℝ
  norm : carrier → ℝ
  innerProductDefined : Prop
  completeness : Prop
  linearStructure : Prop

structure RieszRepresentationPackage (H : HilbertSpace) where
  continuousDual : Type u
  rieszMap : H → continuousDual
  isometric : Prop
  onto : Prop
  linear : Prop

structure RieszRepresentationEvidence {H : HilbertSpace} (R : RieszRepresentationPackage H) where
  isometricClosed : R.isometric
  ontoClosed : R.onto
  linearClosed : R.linear

def RieszRepresentationClosed {H : HilbertSpace} (R : RieszRepresentationPackage H) : Prop :=
  R.isometric ∧ R.onto ∧ R.linear

theorem riesz_representation_closed_from_evidence {H : HilbertSpace} (R : RieszRepresentationPackage H) (E : RieszRepresentationEvidence R) : RieszRepresentationClosed R := by
  exact And.intro E.isometricClosed (And.intro E.ontoClosed E.linearClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse