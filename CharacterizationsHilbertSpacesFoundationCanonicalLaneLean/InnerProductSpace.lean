import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure InnerProductSpacePackage where
  carrier : Type u
  scalarField : Type v
  innerProduct : carrier → carrier → scalarField
  positiveDefinite : Prop
  conjugateSymmetry : Prop
  linearInFirstArg : Prop

structure InnerProductSpaceEvidence (I : InnerProductSpacePackage) where
  positiveDefiniteClosed : I.positiveDefinite
  conjugateSymmetryClosed : I.conjugateSymmetry
  linearInFirstArgClosed : I.linearInFirstArg

def InnerProductSpaceClosed (I : InnerProductSpacePackage) : Prop :=
  I.positiveDefinite ∧ I.conjugateSymmetry ∧ I.linearInFirstArg

theorem inner_product_space_closed_from_evidence (I : InnerProductSpacePackage)
    (E : InnerProductSpaceEvidence I) : InnerProductSpaceClosed I :=
  And.intro E.positiveDefiniteClosed (And.intro E.conjugateSymmetryClosed E.linearInFirstArgClosed)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse