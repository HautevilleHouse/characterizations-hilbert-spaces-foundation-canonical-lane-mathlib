import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure OrthonormalBasisPackage (H : HilbertSpace) where
  basisSet : Set H
  orthonormal : Prop
  complete : Prop
  denseSpan : Prop

structure OrthonormalBasisEvidence {H : HilbertSpace} (B : OrthonormalBasisPackage H) where
  orthonormalClosed : B.orthonormal
  completeClosed : B.complete
  denseSpanClosed : B.denseSpan

def OrthonormalBasisClosed {H : HilbertSpace} (B : OrthonormalBasisPackage H) : Prop :=
  B.orthonormal ∧ B.complete ∧ B.denseSpan

theorem orthonormal_basis_closed_from_evidence {H : HilbertSpace} (B : OrthonormalBasisPackage H) (E : OrthonormalBasisEvidence B) : OrthonormalBasisClosed B := by
  exact And.intro E.orthonormalClosed (And.intro E.completeClosed E.denseSpanClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse