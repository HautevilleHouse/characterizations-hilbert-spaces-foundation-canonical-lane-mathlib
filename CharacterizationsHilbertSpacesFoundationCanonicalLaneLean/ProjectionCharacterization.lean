import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.SelfDualCharacterization

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure ProjectionCharacterizationPackage {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    {OB : OrthonormalBasisCharacterizationEvidence O}
    {S : SelfDualCharacterizationPackage OB}
    (SD : SelfDualCharacterizationEvidence S) where
  orthogonalComplementExists : Prop
  projectionOperatorExists : Prop
  bestApproximationTheorem : Prop
  orthogonalComplementExistsTerm : orthogonalComplementExists
  projectionOperatorExistsTerm : projectionOperatorExists
  bestApproximationTheoremTerm : bestApproximationTheorem

structure ProjectionCharacterizationEvidence {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    {OB : OrthonormalBasisCharacterizationEvidence O}
    {S : SelfDualCharacterizationPackage OB}
    {SD : SelfDualCharacterizationEvidence S}
    (Pr : ProjectionCharacterizationPackage SD) where
  orthogonalComplementExistsClosed : Pr.orthogonalComplementExists
  projectionOperatorExistsClosed : Pr.projectionOperatorExists
  bestApproximationTheoremClosed : Pr.bestApproximationTheorem

def ProjectionCharacterizationClosed {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    {OB : OrthonormalBasisCharacterizationEvidence O}
    {S : SelfDualCharacterizationPackage OB}
    {SD : SelfDualCharacterizationEvidence S}
    (Pr : ProjectionCharacterizationPackage SD) : Prop :=
  Pr.orthogonalComplementExists ∧ Pr.projectionOperatorExists ∧ Pr.bestApproximationTheorem

theorem projection_characterization_closed_from_evidence
    {P : InnerProductCharacterizationPackage} {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP} {OB : OrthonormalBasisCharacterizationEvidence O}
    {S : SelfDualCharacterizationPackage OB} {SD : SelfDualCharacterizationEvidence S}
    (Pr : ProjectionCharacterizationPackage SD) (E : ProjectionCharacterizationEvidence Pr) :
    ProjectionCharacterizationClosed Pr := by
  exact And.intro E.orthogonalComplementExistsClosed
    (And.intro E.projectionOperatorExistsClosed E.bestApproximationTheoremClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse