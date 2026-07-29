import EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def environmentalProjection : Projection EnvironmentalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem environmental_projection_idempotent (x : EnvironmentalEndgameState) :
    environmentalProjection.toFun (environmentalProjection.toFun x) = environmentalProjection.toFun x := by
  exact environmentalProjection.idempotent x

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
