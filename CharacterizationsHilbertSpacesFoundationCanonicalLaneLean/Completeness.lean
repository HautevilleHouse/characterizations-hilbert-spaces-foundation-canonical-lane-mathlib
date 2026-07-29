import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure CompletenessPackage where
  normedSpace : Type u
  complete : Prop
  cauchySequencesConverge : Prop

structure CompletenessEvidence (C : CompletenessPackage) where
  completeClosed : C.complete
  cauchySequencesConvergeClosed : C.cauchySequencesConverge

def CompletenessClosed (C : CompletenessPackage) : Prop :=
  C.complete ∧ C.cauchySequencesConverge

theorem completeness_closed_from_evidence (C : CompletenessPackage) (E : CompletenessEvidence C) :
    CompletenessClosed C := And.intro E.completeClosed E.cauchySequencesConvergeClosed

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse