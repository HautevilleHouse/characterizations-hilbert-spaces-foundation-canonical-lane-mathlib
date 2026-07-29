import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure HilbertBasisPackage where
  innerProductSpace : Type u
  orthonormalBasisExists : Prop
  orthogonalSpanDense : Prop
  fourierExpansion : Prop

structure HilbertBasisEvidence (H : HilbertBasisPackage) where
  orthonormalBasisExistsClosed : H.orthonormalBasisExists
  orthogonalSpanDenseClosed : H.orthogonalSpanDense
  fourierExpansionClosed : H.fourierExpansion

def HilbertBasisClosed (H : HilbertBasisPackage) : Prop :=
  H.orthonormalBasisExists ∧ H.orthogonalSpanDense ∧ H.fourierExpansion

theorem hilbert_basis_closed_from_evidence (H : HilbertBasisPackage) (E : HilbertBasisEvidence H) :
    HilbertBasisClosed H :=
  And.intro E.orthonormalBasisExistsClosed (And.intro E.orthogonalSpanDenseClosed E.fourierExpansionClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse