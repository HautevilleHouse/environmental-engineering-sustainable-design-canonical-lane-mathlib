import canonicalLaneMathlib.AdmissibleClass

/-!
# Carbon Footprint Package
-/

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure CarbonFootprintPackage where
  emissionSourcesIdentified : Prop
  emissionFactorsValid : Prop
  calculationMethodCorrect : Prop
  uncertaintyQuantified : Prop

structure CarbonFootprintEvidence (C : CarbonFootprintPackage) where
  emissionSourcesIdentifiedClosed : C.emissionSourcesIdentified
  emissionFactorsValidClosed : C.emissionFactorsValid
  calculationMethodCorrectClosed : C.calculationMethodCorrect
  uncertaintyQuantifiedClosed : C.uncertaintyQuantified

def CarbonFootprintClosed (C : CarbonFootprintPackage) : Prop :=
  C.emissionSourcesIdentified ∧ C.emissionFactorsValid ∧ C.calculationMethodCorrect ∧ C.uncertaintyQuantified

theorem carbon_footprint_closed_from_evidence (C : CarbonFootprintPackage) (E : CarbonFootprintEvidence C) :
    CarbonFootprintClosed C := by
  exact And.intro E.emissionSourcesIdentifiedClosed
    (And.intro E.emissionFactorsValidClosed
      (And.intro E.calculationMethodCorrectClosed E.uncertaintyQuantifiedClosed))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse