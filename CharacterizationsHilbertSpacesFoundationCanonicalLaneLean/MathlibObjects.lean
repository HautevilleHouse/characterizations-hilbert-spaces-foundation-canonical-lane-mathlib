import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

structure HilbertSpaceAdmittedObject where
  space : Type u
  innerProduct : space → space → ℝ
  complete : Prop
  separable : Prop
  conclusion : complete ∧ separable

def HilbertSpaceWitnessClosed (O : HilbertSpaceAdmittedObject) : Prop :=
  O.complete ∧ O.separable

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse