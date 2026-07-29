import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure EnvironmentalAdmissibleObject where
  designSystem : Type
  sustainabilityMetrics : Prop
  impactCategories : Prop
  lifecycleStages : Prop
  conclusion : sustainabilityMetrics ∧ impactCategories ∧ lifecycleStages

structure AdmissibleClass where
  object : EnvironmentalAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.sustainabilityMetrics ∧ A.object.impactCategories ∧ A.object.lifecycleStages) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse