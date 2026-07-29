import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

def ConstrainedHilbertClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hilbert_endgame (A : AdmissibleClass) : ConstrainedHilbertClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse