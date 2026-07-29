import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure OrthogonalProjectionPackage where
  innerProductSpace : Type u
  closedSubspace : Prop
  projectionExists : Prop
  bestApproximation : Prop

structure OrthogonalProjectionEvidence (O : OrthogonalProjectionPackage) where
  closedSubspaceClosed : O.closedSubspace
  projectionExistsClosed : O.projectionExists
  bestApproximationClosed : O.bestApproximation

def OrthogonalProjectionClosed (O : OrthogonalProjectionPackage) : Prop :=
  O.closedSubspace ∧ O.projectionExists ∧ O.bestApproximation

theorem orthogonal_projection_closed_from_evidence (O : OrthogonalProjectionPackage)
    (E : OrthogonalProjectionEvidence O) : OrthogonalProjectionClosed O :=
  And.intro E.closedSubspaceClosed (And.intro E.projectionExistsClosed E.bestApproximationClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse