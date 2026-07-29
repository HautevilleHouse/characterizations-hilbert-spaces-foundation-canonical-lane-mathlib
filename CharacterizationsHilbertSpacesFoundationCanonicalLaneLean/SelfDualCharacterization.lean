import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.OrthonormalBasisCharacterization

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure SelfDualCharacterizationPackage {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    (OB : OrthonormalBasisCharacterizationEvidence O) where
  rieszRepresentationTheorem : Prop
  selfDualSpace : Prop
  isometricIsomorphism : Prop
  rieszRepresentationTheoremTerm : rieszRepresentationTheorem
  selfDualSpaceTerm : selfDualSpace
  isometricIsomorphismTerm : isometricIsomorphism

structure SelfDualCharacterizationEvidence {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    {OB : OrthonormalBasisCharacterizationEvidence O}
    (S : SelfDualCharacterizationPackage OB) where
  rieszRepresentationTheoremClosed : S.rieszRepresentationTheorem
  selfDualSpaceClosed : S.selfDualSpace
  isometricIsomorphismClosed : S.isometricIsomorphism

def SelfDualCharacterizationClosed {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP}
    {OB : OrthonormalBasisCharacterizationEvidence O}
    (S : SelfDualCharacterizationPackage OB) : Prop :=
  S.rieszRepresentationTheorem ∧ S.selfDualSpace ∧ S.isometricIsomorphism

theorem self_dual_characterization_closed_from_evidence
    {P : InnerProductCharacterizationPackage} {IP : InnerProductCharacterizationEvidence P}
    {O : OrthonormalBasisCharacterizationPackage IP} {OB : OrthonormalBasisCharacterizationEvidence O}
    (S : SelfDualCharacterizationPackage OB) (E : SelfDualCharacterizationEvidence S) :
    SelfDualCharacterizationClosed S := by
  exact And.intro E.rieszRepresentationTheoremClosed
    (And.intro E.selfDualSpaceClosed E.isometricIsomorphismClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse