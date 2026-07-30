import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure MechanicalSystem where
  body : Type
  materialModel : Prop
  boundaryConditions : Prop

structure MechanicalAdmittedObject where
  system : MechanicalSystem
  vibrationAnalysisComplete : Prop
  conclusion : vibrationAnalysisComplete

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse