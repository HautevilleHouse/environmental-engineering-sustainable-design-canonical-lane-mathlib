import EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.CircularEconomyPackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure SustainableDesignFoundation where
  environmentalImpact : EnvironmentalImpactPackage
  impactEvidence : EnvironmentalImpactEvidence environmentalImpact
  lifeCycleAssessment : LifeCycleAssessmentPackage environmentalImpact
  lcaEvidence : LifeCycleAssessmentEvidence lifeCycleAssessment
  circularEconomy : CircularEconomyPackage lifeCycleAssessment
  circularEconomyEvidence : CircularEconomyEvidence circularEconomy

def SustainableDesignFoundationClosed (F : SustainableDesignFoundation) : Prop :=
  EnvironmentalImpactClosed F.environmentalImpact ∧
  LifeCycleAssessmentClosed F.lifeCycleAssessment ∧
  CircularEconomyClosed F.circularEconomy

theorem sustainable_design_foundation_closed_from_evidence
    (F : SustainableDesignFoundation) : SustainableDesignFoundationClosed F := by
  exact And.intro (environmental_impact_closed_from_evidence F.environmentalImpact F.impactEvidence)
    (And.intro (life_cycle_assessment_closed_from_evidence F.lifeCycleAssessment F.lcaEvidence)
      (circular_economy_closed_from_evidence F.circularEconomy F.circularEconomyEvidence))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
