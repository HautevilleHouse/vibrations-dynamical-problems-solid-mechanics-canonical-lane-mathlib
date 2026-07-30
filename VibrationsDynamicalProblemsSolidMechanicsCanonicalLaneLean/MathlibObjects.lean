import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VibrationsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VibrationsAdmittedObject where
  space : VibrationsSpace
  continuousSystem : Prop
  boundedTrajectories : Prop
  energyDissipation : Prop
  convergenceToAttractor : Prop
  conclusion : convergenceToAttractor

structure VibrationsEndgameState where
  object : VibrationsAdmittedObject

def VibrationsWitnessClosed (O : VibrationsAdmittedObject) : Prop :=
  O.convergenceToAttractor

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse