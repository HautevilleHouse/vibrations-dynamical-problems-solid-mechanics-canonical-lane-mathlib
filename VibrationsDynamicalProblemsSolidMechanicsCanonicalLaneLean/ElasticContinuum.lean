import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ElasticContinuumPackage where
  bodyDomain : Type u
  materialSymmetry : Prop
  linearElasticLaw : Prop
  boundaryConditions : Prop
  initialDisplacementField : Prop

structure ElasticContinuumEvidence (E : ElasticContinuumPackage) where
  materialSymmetryClosed : E.materialSymmetry
  linearElasticLawClosed : E.linearElasticLaw
  boundaryConditionsClosed : E.boundaryConditions
  initialDisplacementFieldClosed : E.initialDisplacementField

def ElasticContinuumClosed (E : ElasticContinuumPackage) : Prop :=
  E.materialSymmetry ∧ E.linearElasticLaw ∧ E.boundaryConditions ∧ E.initialDisplacementField

theorem elastic_continuum_closed_from_evidence (E : ElasticContinuumPackage)
    (Ev : ElasticContinuumEvidence E) : ElasticContinuumClosed E := by
  exact And.intro Ev.materialSymmetryClosed
    (And.intro Ev.linearElasticLawClosed
      (And.intro Ev.boundaryConditionsClosed Ev.initialDisplacementFieldClosed))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse