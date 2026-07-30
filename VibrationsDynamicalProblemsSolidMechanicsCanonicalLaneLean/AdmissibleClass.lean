import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : MechanicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  VibrationBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse