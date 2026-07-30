import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure NoncollapsingPackage {E : EnergyDissipationPackage} where
  scaleInvariantEnergyBound : Prop
  dampingScaleControl : Prop
  attractorNoncollapsed : Prop

structure NoncollapsingEvidence {E : EnergyDissipationPackage} (N : NoncollapsingPackage E) where
  scaleInvariantEnergyBoundClosed : N.scaleInvariantEnergyBound
  dampingScaleControlClosed : N.dampingScaleControl
  attractorNoncollapsedClosed : N.attractorNoncollapsed

def NoncollapsingClosed {E : EnergyDissipationPackage} (N : NoncollapsingPackage E) : Prop :=
  N.scaleInvariantEnergyBound ∧ N.dampingScaleControl ∧ N.attractorNoncollapsed

theorem noncollapsing_closed_from_evidence
    {E : EnergyDissipationPackage} (N : NoncollapsingPackage E) (E' : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E'.scaleInvariantEnergyBoundClosed
    (And.intro E'.dampingScaleControlClosed E'.attractorNoncollapsedClosed)

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse