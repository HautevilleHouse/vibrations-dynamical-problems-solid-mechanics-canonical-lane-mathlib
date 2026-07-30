import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure FrequencyResponsePackage where
  frequencyRange : Set ℝ
  transferFunction : ℝ → ℂ
  magnitudePeak : ℝ
  phaseShift : ℝ → ℝ
  resonantFrequency : ℝ

structure FrequencyResponseEvidence (F : FrequencyResponsePackage) where
  magnitudePeakClosed : F.magnitudePeak > 0
  transferFunctionContinuous : ∀ ω ∈ F.frequencyRange, Complex.continuousAt F.transferFunction ω

def FrequencyResponseClosed (F : FrequencyResponsePackage) : Prop :=
  F.magnitudePeak > 0 ∧ ∀ ω ∈ F.frequencyRange, Complex.continuousAt F.transferFunction ω

theorem frequency_response_closed_from_evidence (F : FrequencyResponsePackage)
    (E : FrequencyResponseEvidence F) : FrequencyResponseClosed F := by
  exact And.intro E.magnitudePeakClosed E.transferFunctionContinuous

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse