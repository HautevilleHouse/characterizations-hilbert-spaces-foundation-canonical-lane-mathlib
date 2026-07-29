import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure ClosedSubspace (H : HilbertSpace) where
  subspaceSet : Set H
  closed : Prop
  linearSubspace : Prop

structure ProjectionTheoremPackage {H : HilbertSpace} (M : ClosedSubspace H) where
  projectionOperator : H → H
  orthogonalComplement : Set H
  uniqueDecomposition : Prop
  projectionIdempotent : Prop
  selfAdjoint : Prop

structure ProjectionTheoremEvidence {H : HilbertSpace} {M : ClosedSubspace H} (P : ProjectionTheoremPackage M) where
  uniqueDecompositionClosed : P.uniqueDecomposition
  projectionIdempotentClosed : P.projectionIdempotent
  selfAdjointClosed : P.selfAdjoint

def ProjectionTheoremClosed {H : HilbertSpace} {M : ClosedSubspace H} (P : ProjectionTheoremPackage M) : Prop :=
  P.uniqueDecomposition ∧ P.projectionIdempotent ∧ P.selfAdjoint

theorem projection_theorem_closed_from_evidence {H : HilbertSpace} {M : ClosedSubspace H} (P : ProjectionTheoremPackage M) (E : ProjectionTheoremEvidence P) : ProjectionTheoremClosed P := by
  exact And.intro E.uniqueDecompositionClosed (And.intro E.projectionIdempotentClosed E.selfAdjointClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse