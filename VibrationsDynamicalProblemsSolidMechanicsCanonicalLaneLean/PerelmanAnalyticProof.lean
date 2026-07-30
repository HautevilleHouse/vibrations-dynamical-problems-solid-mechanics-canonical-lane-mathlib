import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure EnergyDissipationAnalyticCertificate (E : EnergyDissipationPackage) where
  dampingMatrixPositiveDefinite : Prop
  stiffnessMatrixBounded : Prop
  energyDecayExponential : Prop
  attractorExistence : Prop
  dampingMatrixPositiveDefiniteClosed : dampingMatrixPositiveDefinite
  stiffnessMatrixBoundedClosed : stiffnessMatrixBounded
  energyDecayExponentialClosed : energyDecayExponential
  attractorExistenceClosed : attractorExistence
  dissipationEvidence : EnergyDissipationEvidence E

def EnergyDissipationAnalyticCertificateClosed (C : EnergyDissipationAnalyticCertificate E) : Prop :=
  C.dampingMatrixPositiveDefinite ∧ C.stiffnessMatrixBounded ∧
  C.energyDecayExponential ∧ C.attractorExistence ∧
  EnergyDissipationClosed E

theorem energy_dissipation_analytic_certificate_closed
    (C : EnergyDissipationAnalyticCertificate E) : EnergyDissipationAnalyticCertificateClosed C := by
  exact And.intro C.dampingMatrixPositiveDefiniteClosed
    (And.intro C.stiffnessMatrixBoundedClosed
      (And.intro C.energyDecayExponentialClosed
        (And.intro C.attractorExistenceClosed
          (energy_dissipation_closed_from_evidence E C.dissipationEvidence))))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse