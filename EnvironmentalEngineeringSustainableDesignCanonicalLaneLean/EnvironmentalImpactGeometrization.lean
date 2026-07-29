import HautevilleHouse.EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.LifeCycleAssessmentPackage

/-! Environmental Impact Geometrization -/

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure EnvironmentalImpactGeometrizationPackage where
  impactCategoriesDefined : Prop
  normalizationAndWeighting : Prop
  singleScoreCalculated : Prop
  uncertaintyAnalysisDone : Prop

structure EnvironmentalImpactGeometrizationEvidence (Z : EnvironmentalImpactGeometrizationPackage) where
  impactCategoriesDefinedClosed : Z.impactCategoriesDefined
  normalizationAndWeightingClosed : Z.normalizationAndWeighting
  singleScoreCalculatedClosed : Z.singleScoreCalculated
  uncertaintyAnalysisDoneClosed : Z.uncertaintyAnalysisDone

def EnvironmentalImpactGeometrizationClosed (Z : EnvironmentalImpactGeometrizationPackage) : Prop :=
  Z.impactCategoriesDefined ∧ Z.normalizationAndWeighting ∧ Z.singleScoreCalculated ∧ Z.uncertaintyAnalysisDone

theorem environmental_impact_geometrization_closed_from_evidence (Z : EnvironmentalImpactGeometrizationPackage) (E : EnvironmentalImpactGeometrizationEvidence Z) : EnvironmentalImpactGeometrizationClosed Z := by
  exact And.intro E.impactCategoriesDefinedClosed (And.intro E.normalizationAndWeightingClosed (And.intro E.singleScoreCalculatedClosed E.uncertaintyAnalysisDoneClosed))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
