import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure DampingModelsPackage where
  viscousDampingCoefficients : Prop
  hystereticDamping : Prop
  proportionalDamping : Prop
  energyDissipationRate : Prop

structure DampingModelsEvidence (D : DampingModelsPackage) where
  viscousDampingCoefficientsClosed : D.viscousDampingCoefficients
  hystereticDampingClosed : D.hystereticDamping
  proportionalDampingClosed : D.proportionalDamping
  energyDissipationRateClosed : D.energyDissipationRate

def DampingModelsClosed (D : DampingModelsPackage) : Prop :=
  D.viscousDampingCoefficients ∧ D.hystereticDamping ∧ D.proportionalDamping ∧ D.energyDissipationRate

theorem damping_models_closed_from_evidence (D : DampingModelsPackage)
    (Ev : DampingModelsEvidence D) : DampingModelsClosed D :=
  And.intro Ev.viscousDampingCoefficientsClosed (And.intro Ev.hystereticDampingClosed
    (And.intro Ev.proportionalDampingClosed Ev.energyDissipationRateClosed))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse