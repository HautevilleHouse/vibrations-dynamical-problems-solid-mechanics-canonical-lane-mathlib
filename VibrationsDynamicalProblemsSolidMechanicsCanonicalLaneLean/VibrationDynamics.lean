import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure VibrationDynamicsPackage where
  naturalFrequencies : Prop
  modeShapes : Prop
  dampingEffects : Prop
  forcedResponse : Prop
  stabilityMargin : Prop

structure VibrationDynamicsEvidence (V : VibrationDynamicsPackage) where
  naturalFrequenciesClosed : V.naturalFrequencies
  modeShapesClosed : V.modeShapes
  dampingEffectsClosed : V.dampingEffects
  forcedResponseClosed : V.forcedResponse
  stabilityMarginClosed : V.stabilityMargin

def VibrationDynamicsClosed (V : VibrationDynamicsPackage) : Prop :=
  V.naturalFrequencies ∧ V.modeShapes ∧ V.dampingEffects ∧ V.forcedResponse ∧ V.stabilityMargin

theorem vibration_dynamics_closed_from_evidence (V : VibrationDynamicsPackage)
    (E : VibrationDynamicsEvidence V) : VibrationDynamicsClosed V := by
  exact And.intro E.naturalFrequenciesClosed
    (And.intro E.modeShapesClosed
      (And.intro E.dampingEffectsClosed
        (And.intro E.forcedResponseClosed E.stabilityMarginClosed)))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse