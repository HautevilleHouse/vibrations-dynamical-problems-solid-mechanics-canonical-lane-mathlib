import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure DampedFrequencyResponse (M : Type) where
  naturalFrequency : ℝ
  dampingRatio : ℝ
  forcedFrequency : ℝ
  amplitudeRatio : ℝ
  phaseLag : ℝ

structure FrequencyResponseEvidence (M : Type) (R : DampedFrequencyResponse M) where
  frequencyDomain : R.forcedFrequency > 0
  amplitudeFinite : R.amplitudeRatio < ∞
  phaseLagConsistent : R.phaseLag ≥ -π ∧ R.phaseLag ≤ π

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse
