import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ModeSuperpositionPackage where
  modeCount : Nat
  naturalFrequencies : List ℝ
  modeShapes : List (ℝ → ℝ)
  orthogonalityCondition : Prop
  superpositionConvergent : Prop

structure ModeSuperpositionEvidence (M : ModeSuperpositionPackage) where
  orthogonalityConditionClosed : M.orthogonalityCondition
  superpositionConvergentClosed : M.superpositionConvergent

def ModeSuperpositionClosed (M : ModeSuperpositionPackage) : Prop :=
  M.orthogonalityCondition ∧ M.superpositionConvergent

theorem mode_superposition_closed_from_evidence (M : ModeSuperpositionPackage)
    (E : ModeSuperpositionEvidence M) : ModeSuperpositionClosed M := by
  exact And.intro E.orthogonalityConditionClosed E.superpositionConvergentClosed

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse