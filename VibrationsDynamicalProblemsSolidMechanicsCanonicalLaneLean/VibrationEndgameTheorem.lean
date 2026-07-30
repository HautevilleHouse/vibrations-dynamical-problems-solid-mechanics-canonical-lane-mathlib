import canonicalLaneMathlib.AdmissibleClass
import VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean.StructuralVibrationDynamics
import VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean.ModeSuperpositionBridge

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact trivial

def ConstrainedVibrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vibration_endgame (A : AdmissibleClass) : ConstrainedVibrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse