import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure SustainableDesignObject where
  projectName : String
  lifeCycleAssessmentComplete : Prop
  environmentalImpactReduction : Prop
  sustainabilityGoalAchieved : Prop

def sustainableDesignWitnessClosed (O : SustainableDesignObject) : Prop :=
  O.sustainabilityGoalAchieved

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
