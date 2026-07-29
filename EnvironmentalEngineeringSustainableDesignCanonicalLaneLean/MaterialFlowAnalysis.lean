import HautevilleHouse.EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.LifeCycleAssessmentPackage

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure MaterialFlowAnalysisPackage {F : SustainabilityFramework}
    (L : LifeCycleAssessmentPackage F) where
  massBalance : Prop
  energyBalance : Prop
  flowRates : Prop
  recyclingPotentials : Prop
  wasteMinimization : Prop

structure MaterialFlowAnalysisEvidence {F : SustainabilityFramework}
    {L : LifeCycleAssessmentPackage F} (M : MaterialFlowAnalysisPackage L) where
  massBalanceClosed : M.massBalance
  energyBalanceClosed : M.energyBalance
  flowRatesClosed : M.flowRates
  recyclingPotentialsClosed : M.recyclingPotentials
  wasteMinimizationClosed : M.wasteMinimization

def MaterialFlowAnalysisClosed {F : SustainabilityFramework}
    {L : LifeCycleAssessmentPackage F} (M : MaterialFlowAnalysisPackage L) : Prop :=
  M.massBalance ∧ M.energyBalance ∧ M.flowRates ∧
  M.recyclingPotentials ∧ M.wasteMinimization

theorem material_flow_analysis_closed_from_evidence
    {F : SustainabilityFramework} {L : LifeCycleAssessmentPackage F}
    (M : MaterialFlowAnalysisPackage L) (E : MaterialFlowAnalysisEvidence M) :
    MaterialFlowAnalysisClosed M := by
  exact And.intro E.massBalanceClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.flowRatesClosed
        (And.intro E.recyclingPotentialsClosed E.wasteMinimizationClosed)))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
