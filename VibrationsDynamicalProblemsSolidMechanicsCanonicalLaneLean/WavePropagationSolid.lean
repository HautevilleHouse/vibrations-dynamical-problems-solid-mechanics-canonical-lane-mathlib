import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure WavePropagationSolidPackage where
  acousticWaveSpeed : Type u
  shearWaveSpeed : Type v
  bodyWaveEquations : Prop
  surfaceWaveEquations : Prop
  materialDispersionRelation : Prop

structure WavePropagationSolidEvidence (W : WavePropagationSolidPackage) where
  acousticWaveSpeedClosed : W.acousticWaveSpeed
  shearWaveSpeedClosed : W.shearWaveSpeed
  bodyWaveEquationsClosed : W.bodyWaveEquations
  surfaceWaveEquationsClosed : W.surfaceWaveEquations
  materialDispersionRelationClosed : W.materialDispersionRelation

def WavePropagationSolidClosed (W : WavePropagationSolidPackage) : Prop :=
  W.acousticWaveSpeed ∧ W.shearWaveSpeed ∧ W.bodyWaveEquations ∧
  W.surfaceWaveEquations ∧ W.materialDispersionRelation

theorem wave_propagation_solid_closed_from_evidence (W : WavePropagationSolidPackage)
    (Ev : WavePropagationSolidEvidence W) : WavePropagationSolidClosed W :=
  And.intro Ev.acousticWaveSpeedClosed (And.intro Ev.shearWaveSpeedClosed
    (And.intro Ev.bodyWaveEquationsClosed (And.intro Ev.surfaceWaveEquationsClosed
      Ev.materialDispersionRelationClosed)))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse