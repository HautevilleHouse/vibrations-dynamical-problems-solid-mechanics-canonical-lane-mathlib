import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure NonlinearVibrationAnalysisPackage where
  nonlinearStiffnessModel : String
  perturbationMethodApplied : Prop
  resonanceCurveCaptured : Prop
  stabilityBifurcationAnalyzed : Prop

structure NonlinearVibrationAnalysisEvidence (N : NonlinearVibrationAnalysisPackage) where
  perturbationMethodAppliedClosed : N.perturbationMethodApplied
  resonanceCurveCapturedClosed : N.resonanceCurveCaptured
  stabilityBifurcationAnalyzedClosed : N.stabilityBifurcationAnalyzed

def NonlinearVibrationAnalysisClosed (N : NonlinearVibrationAnalysisPackage) : Prop :=
  N.perturbationMethodApplied ∧ N.resonanceCurveCaptured ∧ N.stabilityBifurcationAnalyzed

theorem nonlinear_vibration_analysis_closed_from_evidence
    (N : NonlinearVibrationAnalysisPackage)
    (E : NonlinearVibrationAnalysisEvidence N) : NonlinearvibrationAnalysisClosed N := by
  exact And.intro E.perturbationMethodAppliedClosed
    (And.intro E.resonanceCurveCapturedClosed E.stabilityBifurcationAnalyzedClosed)

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse