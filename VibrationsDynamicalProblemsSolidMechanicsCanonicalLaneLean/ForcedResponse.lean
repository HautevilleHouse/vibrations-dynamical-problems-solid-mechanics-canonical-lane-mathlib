import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean.ModalAnalysis

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ForcedResponsePackage {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    {M : ModalAnalysisPackage ec} (me : ModalAnalysisEvidence M) where
  timeDomainForcing : Prop
  frequencyDomainResponse : Prop
  dampingModel : Prop
  resonanceIdentification : Prop

structure ForcedResponseEvidence {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    {M : ModalAnalysisPackage ec} {me : ModalAnalysisEvidence M}
    (F : ForcedResponsePackage me) where
  timeDomainForcingClosed : F.timeDomainForcing
  frequencyDomainResponseClosed : F.frequencyDomainResponse
  dampingModelClosed : F.dampingModel
  resonanceIdentificationClosed : F.resonanceIdentification

def ForcedResponseClosed {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    {M : ModalAnalysisPackage ec} {me : ModalAnalysisEvidence M}
    (F : ForcedResponsePackage me) : Prop :=
  F.timeDomainForcing ∧ F.frequencyDomainResponse ∧ F.dampingModel ∧ F.resonanceIdentification

theorem forced_response_closed_from_evidence {E : ElasticContinuumPackage} {ec : ElasticContinuumEvidence E}
    {M : ModalAnalysisPackage ec} {me : ModalAnalysisEvidence M}
    (F : ForcedResponsePackage me) (Ev : ForcedResponseEvidence F) : ForcedResponseClosed F := by
  exact And.intro Ev.timeDomainForcingClosed
    (And.intro Ev.frequencyDomainResponseClosed
      (And.intro Ev.dampingModelClosed Ev.resonanceIdentificationClosed))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse