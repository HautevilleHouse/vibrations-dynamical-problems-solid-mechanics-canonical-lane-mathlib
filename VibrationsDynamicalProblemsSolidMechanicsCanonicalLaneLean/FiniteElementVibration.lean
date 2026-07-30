import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure FiniteElementVibrationPackage where
  elementCount : Nat
  stiffnessMatrix : Matrix (Fin elementCount) (Fin elementCount) ℝ
  massMatrix : Matrix (Fin elementCount) (Fin elementCount) ℝ
  boundaryConditionsApplied : Prop
  eigenvalueProblemSolved : Prop

structure FiniteElementVibrationEvidence (F : FiniteElementVibrationPackage) where
  boundaryConditionsAppliedClosed : F.boundaryConditionsApplied
  eigenvalueProblemSolvedClosed : F.eigenvalueProblemSolved

def FiniteElementVibrationClosed (F : FiniteElementVibrationPackage) : Prop :=
  F.boundaryConditionsApplied ∧ F.eigenvalueProblemSolved

theorem finite_element_vibration_closed_from_evidence (F : FiniteElementVibrationPackage)
    (E : FiniteElementVibrationEvidence F) : FiniteElementVibrationClosed F := by
  exact And.intro E.boundaryConditionsAppliedClosed E.eigenvalueProblemSolvedClosed

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse