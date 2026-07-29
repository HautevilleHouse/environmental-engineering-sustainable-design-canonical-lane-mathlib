import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

structure EnvironmentalImpactPackage (G : AdmissibleClass) where
  resourceDepletion : Prop
  ecotoxicity : Prop
  globalWarmingPotential : Prop
  renewableEnergyFraction : Prop

structure EnvironmentalImpactEvidence {G : AdmissibleClass} (F : EnvironmentalImpactPackage G) where
  resourceDepletionClosed : F.resourceDepletion
  ecotoxicityClosed : F.ecotoxicity
  globalWarmingPotentialClosed : F.globalWarmingPotential
  renewableEnergyFractionClosed : F.renewableEnergyFraction

def EnvironmentalImpactClosed {G : AdmissibleClass} (F : EnvironmentalImpactPackage G) : Prop :=
  F.resourceDepletion ∧ F.ecotoxicity ∧ F.globalWarmingPotential ∧ F.renewableEnergyFraction

theorem environmental_impact_closed_from_evidence {G : AdmissibleClass} (F : EnvironmentalImpactPackage G) (E : EnvironmentalImpactEvidence F) : EnvironmentalImpactClosed F :=
  And.intro E.resourceDepletionClosed (And.intro E.ecotoxicityClosed (And.intro E.globalWarmingPotentialClosed E.renewableEnergyFractionClosed))

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse