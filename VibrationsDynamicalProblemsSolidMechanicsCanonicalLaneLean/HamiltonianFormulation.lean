import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure HamiltonianFormulationPackage where
  kineticEnergyFunctional : Type u
  potentialEnergyFunctional : Type v
  lagrangianDefined : Prop
  hamiltonEquationsDerived : Prop
  phaseSpaceCompactification : Prop

structure HamiltonianFormulationEvidence (H : HamiltonianFormulationPackage) where
  kineticEnergyFunctionalClosed : H.kineticEnergyFunctional
  potentialEnergyFunctionalClosed : H.potentialEnergyFunctional
  lagrangianDefinedClosed : H.lagrangianDefined
  hamiltonEquationsDerivedClosed : H.hamiltonEquationsDerived
  phaseSpaceCompactificationClosed : H.phaseSpaceCompactification

def HamiltonianFormulationClosed (H : HamiltonianFormulationPackage) : Prop :=
  H.kineticEnergyFunctional ∧ H.potentialEnergyFunctional ∧
  H.lagrangianDefined ∧ H.hamiltonEquationsDerived ∧ H.phaseSpaceCompactification

theorem hamiltonian_formulation_closed_from_evidence (H : HamiltonianFormulationPackage)
    (Ev : HamiltonianFormulationEvidence H) : HamiltonianFormulationClosed H :=
  And.intro Ev.kineticEnergyFunctionalClosed (And.intro Ev.potentialEnergyFunctionalClosed
    (And.intro Ev.lagrangianDefinedClosed (And.intro Ev.hamiltonEquationsDerivedClosed
      Ev.phaseSpaceCompactificationClosed)))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse