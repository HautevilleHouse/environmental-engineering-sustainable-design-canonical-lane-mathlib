import HautevilleHouse.EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.SustainabilityFramework

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure LifeCycleAssessmentPackage (F : SustainabilityFramework) where
  goalAndScope : Prop
  inventoryAnalysis : Prop
  impactAssessment : Prop
  interpretation : Prop
  dataQualityIndicators : Prop

structure LifeCycleAssessmentEvidence {F : SustainabilityFramework}
    (L : LifeCycleAssessmentPackage F) where
  goalAndScopeClosed : L.goalAndScope
  inventoryAnalysisClosed : L.inventoryAnalysis
  impactAssessmentClosed : L.impactAssessment
  interpretationClosed : L.interpretation
  dataQualityIndicatorsClosed : L.dataQualityIndicators

def LifeCycleAssessmentClosed {F : SustainabilityFramework}
    (L : LifeCycleAssessmentPackage F) : Prop :=
  L.goalAndScope ∧ L.inventoryAnalysis ∧
  L.impactAssessment ∧ L.interpretation ∧ L.dataQualityIndicators

theorem life_cycle_assessment_closed_from_evidence
    {F : SustainabilityFramework} (L : LifeCycleAssessmentPackage F)
    (E : LifeCycleAssessmentEvidence L) : LifeCycleAssessmentClosed L := by
  exact And.intro E.goalAndScopeClosed
    (And.intro E.inventoryAnalysisClosed
      (And.intro E.impactAssessmentClosed
        (And.intro E.interpretationClosed E.dataQualityIndicatorsClosed)))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
