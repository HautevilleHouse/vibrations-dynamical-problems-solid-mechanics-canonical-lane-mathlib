import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ContinuousVibrationModel (M : Type) where
  displacementField : M → ℝ
  strainTensor : M → ℝ×ℝ×ℝ
  stressTensor : M → ℝ×ℝ×ℝ
  vibrationalFrequency : ℝ
  modeShape : M → ℝ

structure StructuralDampingPackage (M : Type) where
  dampingCoefficient : ℝ
  hysteresisModel : M → ℝ
  energyDissipationRate : ℝ

structure VibrationDynamicalEvidence (M : Type) (V : ContinuousVibrationModel M) (D : StructuralDampingPackage M) where
  displacementContinuous : Continuous V.displacementField
  strainStressRelation : ∀ x : M, V.strainTensor x = V.stressTensor x
  dampingConsistent : D.energyDissipationRate = D.dampingCoefficient * (V.vibrationalFrequency ^ 2)
  modeShapeNormalized : ∀ x : M, V.modeShape x ≥ 0

structure VibrationDynamicalClosed (M : Type) (V : ContinuousVibrationModel M) (D : StructuralDampingPackage M) : Prop where
  evidenceExists : VibrationDynamicalEvidence M V D
  vibrationalClosure : Prop

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse
