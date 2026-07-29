import EnvironmentalEngineeringSustainableDesignCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EnvironmentalEngineeringSustainableDesignCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EnvironmentalDesignObject where
  designProject : Type
  sustainabilityTargetsMet : Prop
  conclusion : sustainabilityTargetsMet

structure EnvironmentalEndgameState where
  object : EnvironmentalDesignObject

def EnvironmentalDesignClosed (O : EnvironmentalDesignObject) : Prop :=
  O.sustainabilityTargetsMet

end EnvironmentalEngineeringSustainableDesignCanonicalLaneLean
end HautevilleHouse
