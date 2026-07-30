import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure EnergyDissipationEvidenceTerms {E : EnergyDissipationPackage} (C : EnergyDissipationAnalyticCertificate E) where
  dampingMatrixPositiveDefinite : C.dampingMatrixPositiveDefinite
  stiffnessMatrixBounded : C.stiffnessMatrixBounded
  energyDecayExponential : C.energyDecayExponential
  attractorExistence : C.attractorExistence
  dissipationClosed : EnergyDissipationClosed E

def EnergyDissipationAnalyticCertificate.evidenceTerms {E : EnergyDissipationPackage}
    (C : EnergyDissipationAnalyticCertificate E) : EnergyDissipationEvidenceTerms C :=
  {
    dampingMatrixPositiveDefinite := C.dampingMatrixPositiveDefiniteClosed
    stiffnessMatrixBounded := C.stiffnessMatrixBoundedClosed
    energyDecayExponential := C.energyDecayExponentialClosed
    attractorExistence := C.attractorExistenceClosed
    dissipationClosed := energy_dissipation_closed_from_evidence E C.dissipationEvidence
  }

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse