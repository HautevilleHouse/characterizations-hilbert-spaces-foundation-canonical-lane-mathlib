import CharacterizationsHilbertSpacesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationsHilbertSpacesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HilbertSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacterizationsHilbertSpacesFoundationCanonicalLaneLean
end HautevilleHouse