import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ElasticDynamicsPDEPackage where
  displacementField : Type u
  strainTensor : Type v
  stressTensor : Type w
  linearElasticityEquation : Prop
  waveEquation : Prop
  boundaryConditions : Prop

structure ElasticDynamicsPDEEvidence (E : ElasticDynamicsPDEPackage) where
  linearElasticityEquationClosed : E.linearElasticityEquation
  waveEquationClosed : E.waveEquation
  boundaryConditionsClosed : E.boundaryConditions

def ElasticDynamicsPDEClosed (E : ElasticDynamicsPDEPackage) : Prop :=
  E.linearElasticityEquation ∧ E.waveEquation ∧ E.boundaryConditions

theorem elastic_dynamics_pde_closed_from_evidence (E : ElasticDynamicsPDEPackage)
    (Ev : ElasticDynamicsPDEEvidence E) : ElasticDynamicsPDEClosed E :=
  And.intro Ev.linearElasticityEquationClosed (And.intro Ev.waveEquationClosed Ev.boundaryConditionsClosed)

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse