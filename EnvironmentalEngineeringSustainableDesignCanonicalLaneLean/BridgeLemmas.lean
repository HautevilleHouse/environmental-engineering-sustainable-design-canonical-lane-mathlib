import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

def bridgeClosed (A : EnvironmentalAdmissibleClass) : Prop :=
  EnvironmentalWitnessClosed A.object

theorem bridge_from_admissible_class (A : EnvironmentalAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse