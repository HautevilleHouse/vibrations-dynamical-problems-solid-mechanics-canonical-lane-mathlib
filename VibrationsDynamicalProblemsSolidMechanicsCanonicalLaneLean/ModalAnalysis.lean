import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean.ElasticContinuum

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ModalAnalysisPackage {E : ElasticContinuumPackage} (ec : ElasticContinuumEvidence E) where
  eigenvalueProblem : Prop
  eigenmodesComputed : Prop
  orthogonalityRelations : Prop
  modalCoordinatesDefined : Prop

structure ModalAnalysisEvidence {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    (M : ModalAnalysisPackage ec) where
  eigenvalueProblemClosed : M.eigenvalueProblem
  eigenmodesComputedClosed : M.eigenmodesComputed
  orthogonalityRelationsClosed : M.orthogonalityRelations
  modalCoordinatesDefinedClosed : M.modalCoordinatesDefined

def ModalAnalysisClosed {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    (M : ModalAnalysisPackage ec) : Prop :=
  M.eigenvalueProblem ∧ M.eigenmodesComputed ∧ M.orthogonalityRelations ∧ M.modalCoordinatesDefined

theorem modal_analysis_closed_from_evidence {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    (M : ModalAnalysisPackage ec) (Ev : ModalAnalysisEvidence M) : ModalAnalysisClosed M := by
  exact And.intro Ev.eigenvalueProblemClosed
    (And.intro Ev.eigenmodesComputedClosed
      (And.intro Ev.orthogonalityRelationsClosed Ev.modalCoordinatesDefinedClosed))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse