import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean

structure ContinuumVibrationBridgePackage where
  continuumDiscretization : Prop
  finiteElementAssembly : Prop
  reducedOrderModel : Prop
  convergenceGuaranteed : Prop

structure ContinuumVibrationBridgeEvidence (C : ContinuumVibrationBridgePackage) where
  continuumDiscretizationClosed : C.continuumDiscretization
  finiteElementAssemblyClosed : C.finiteElementAssembly
  reducedOrderModelClosed : C.reducedOrderModel
  convergenceGuaranteedClosed : C.convergenceGuaranteed

def ContinuumVibrationBridgeClosed (C : ContinuumVibrationBridgePackage) : Prop :=
  C.continuumDiscretization ∧ C.finiteElementAssembly ∧ C.reducedOrderModel ∧ C.convergenceGuaranteed

theorem continuum_vibration_bridge_closed_from_evidence (C : ContinuumVibrationBridgePackage)
    (Ev : ContinuumVibrationBridgeEvidence C) : ContinuumVibrationBridgeClosed C :=
  And.intro Ev.continuumDiscretizationClosed (And.intro Ev.finiteElementAssemblyClosed
    (And.intro Ev.reducedOrderModelClosed Ev.convergenceGuaranteedClosed))

end VibrationsDynamicalProblemsSolidMechanicsCanonicalLaneLean
end HautevilleHouse