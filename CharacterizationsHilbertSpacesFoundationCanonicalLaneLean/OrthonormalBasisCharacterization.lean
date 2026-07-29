import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.InnerProductCharacterization

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure OrthonormalBasisCharacterizationPackage {P : InnerProductCharacterizationPackage}
    (IP : InnerProductCharacterizationEvidence P) where
  orthonormalBasisExists : Prop
  parsevalIdentity : Prop
  basisExpansionConverges : Prop
  orthonormalBasisExistsTerm : orthonormalBasisExists
  parsevalIdentityTerm : parsevalIdentity
  basisExpansionConvergesTerm : basisExpansionConverges

structure OrthonormalBasisCharacterizationEvidence {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    (O : OrthonormalBasisCharacterizationPackage IP) where
  orthonormalBasisExistsClosed : O.orthonormalBasisExists
  parsevalIdentityClosed : O.parsevalIdentity
  basisExpansionConvergesClosed : O.basisExpansionConverges

def OrthonormalBasisCharacterizationClosed {P : InnerProductCharacterizationPackage}
    {IP : InnerProductCharacterizationEvidence P}
    (O : OrthonormalBasisCharacterizationPackage IP) : Prop :=
  O.orthonormalBasisExists ∧ O.parsevalIdentity ∧ O.basisExpansionConverges

theorem orthonormal_basis_characterization_closed_from_evidence
    {P : InnerProductCharacterizationPackage} {IP : InnerProductCharacterizationEvidence P}
    (O : OrthonormalBasisCharacterizationPackage IP) (E : OrthonormalBasisCharacterizationEvidence O) :
    OrthonormalBasisCharacterizationClosed O := by
  exact And.intro E.orthonormalBasisExistsClosed
    (And.intro E.parsevalIdentityClosed E.basisExpansionConvergesClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse