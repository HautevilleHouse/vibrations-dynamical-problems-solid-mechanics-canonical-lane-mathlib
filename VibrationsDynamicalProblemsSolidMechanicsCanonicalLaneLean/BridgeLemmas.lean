import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VibrationBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse