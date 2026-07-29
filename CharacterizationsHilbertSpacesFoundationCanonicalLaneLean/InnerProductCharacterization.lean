import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure InnerProductCharacterizationPackage where
  space : Type u
  vectorSpace : AddCommGroup space
  scalarMultiplication : Module ℝ space
  innerProduct : space → space → ℝ
  innerProductPositiveDefinite : Prop
  inducedNorm : space → ℝ
  parallelogramLaw : Prop
  completeness : Prop
  innerProductPositiveDefiniteTerm : innerProductPositiveDefinite
  parallelogramLawTerm : parallelogramLaw
  completenessTerm : completeness

structure InnerProductCharacterizationEvidence (P : InnerProductCharacterizationPackage) where
  innerProductPositiveDefiniteClosed : P.innerProductPositiveDefinite
  parallelogramLawClosed : P.parallelogramLaw
  completenessClosed : P.completeness

def InnerProductCharacterizationClosed (P : InnerProductCharacterizationPackage) : Prop :=
  P.innerProductPositiveDefinite ∧ P.parallelogramLaw ∧ P.completeness

theorem inner_product_characterization_closed_from_evidence
    (P : InnerProductCharacterizationPackage) (E : InnerProductCharacterizationEvidence P) :
    InnerProductCharacterizationClosed P := by
  exact And.intro E.innerProductPositiveDefiniteClosed
    (And.intro E.parallelogramLawClosed E.completenessClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse