import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ConstitutiveModel (M : Type) where
  youngModulus : ℝ
  poissonRatio : ℝ
  density : ℝ

structure LinearElasticConsistency (M : Type) (C : ConstitutiveModel M) where
  youngPositive : C.youngModulus > 0
  poissonWithinBounds : C.poissonRatio > -1 ∧ C.poissonRatio < 0.5
  densityPositive : C.density > 0

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse
