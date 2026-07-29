import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeurogenesisTimingPackage (A : AdmissibleClass) where
  proneuralGeneCascade : Prop
  notchDeltaLateralInhibition : Prop
  cellCycleExitControl : Prop
  temporalIdentitySpecification : Prop

structure NeurogenesisTimingEvidence {A : AdmissibleClass} (T : NeurogenesisTimingPackage A) where
  proneuralGeneCascadeClosed : T.proneuralGeneCascade
  notchDeltaLateralInhibitionClosed : T.notchDeltaLateralInhibition
  cellCycleExitControlClosed : T.cellCycleExitControl
  temporalIdentitySpecificationClosed : T.temporalIdentitySpecification

def NeurogenesisTimingClosed {A : AdmissibleClass} (T : NeurogenesisTimingPackage A) : Prop :=
  T.proneuralGeneCascade ∧ T.notchDeltaLateralInhibition ∧ T.cellCycleExitControl ∧ T.temporalIdentitySpecification

theorem neurogenesis_timing_closed_from_evidence {A : AdmissibleClass} (T : NeurogenesisTimingPackage A) (E : NeurogenesisTimingEvidence T) :
    NeurogenesisTimingClosed T := by
  exact And.intro E.proneuralGeneCascadeClosed (And.intro E.notchDeltaLateralInhibitionClosed (And.intro E.cellCycleExitControlClosed E.temporalIdentitySpecificationClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse