import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure SolidMechanicsPackage where
  constitutiveLaw : Prop
  equilibriumEquations : Prop
  strainDisplacement : Prop
  stressStrainRelation : Prop
  boundaryValueProblem : Prop

structure SolidMechanicsEvidence (S : SolidMechanicsPackage) where
  constitutiveLawClosed : S.constitutiveLaw
  equilibriumEquationsClosed : S.equilibriumEquations
  strainDisplacementClosed : S.strainDisplacement
  stressStrainRelationClosed : S.stressStrainRelation
  boundaryValueProblemClosed : S.boundaryValueProblem

def SolidMechanicsClosed (S : SolidMechanicsPackage) : Prop :=
  S.constitutiveLaw ∧ S.equilibriumEquations ∧ S.strainDisplacement ∧ S.stressStrainRelation ∧ S.boundaryValueProblem

theorem solid_mechanics_closed_from_evidence (S : SolidMechanicsPackage)
    (E : SolidMechanicsEvidence S) : SolidMechanicsClosed S := by
  exact And.intro E.constitutiveLawClosed
    (And.intro E.equilibriumEquationsClosed
      (And.intro E.strainDisplacementClosed
        (And.intro E.stressStrainRelationClosed E.boundaryValueProblemClosed)))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse