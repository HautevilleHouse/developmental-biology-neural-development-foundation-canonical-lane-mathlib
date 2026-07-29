import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeurogenesisRegulationPackage where
  proneuralGeneExpression : Prop
  notchDeltaSignaling : Prop
  cellCycleExitControl : Prop
  neuronalDifferentiation : Prop
  subtypeSpecification : Prop

structure NeurogenesisRegulationEvidence (N : NeurogenesisRegulationPackage) where
  proneuralGeneExpressionClosed : N.proneuralGeneExpression
  notchDeltaSignalingClosed : N.notchDeltaSignaling
  cellCycleExitControlClosed : N.cellCycleExitControl
  neuronalDifferentiationClosed : N.neuronalDifferentiation
  subtypeSpecificationClosed : N.subtypeSpecification

def NeurogenesisRegulationClosed (N : NeurogenesisRegulationPackage) : Prop :=
  N.proneuralGeneExpression ∧ N.notchDeltaSignaling ∧
  N.cellCycleExitControl ∧ N.neuronalDifferentiation ∧
  N.subtypeSpecification

theorem neurogenesis_regulation_closed_from_evidence
    (N : NeurogenesisRegulationPackage) (E : NeurogenesisRegulationEvidence N) :
    NeurogenesisRegulationClosed N := by
  exact And.intro E.proneuralGeneExpressionClosed
    (And.intro E.notchDeltaSignalingClosed
      (And.intro E.cellCycleExitControlClosed
        (And.intro E.neuronalDifferentiationClosed
          E.subtypeSpecificationClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse