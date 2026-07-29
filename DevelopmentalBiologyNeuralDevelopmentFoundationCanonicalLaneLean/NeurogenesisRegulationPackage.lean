import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeurogenesisRegulationPackage where
  proneuralGenes : Prop
  notchDeltaInhibition : Prop
  cellCycleExit : Prop
  neuronalDifferentiation : Prop

structure NeurogenesisRegulationEvidence (N : NeurogenesisRegulationPackage) where
  proneuralGenesClosed : N.proneuralGenes
  notchDeltaInhibitionClosed : N.notchDeltaInhibition
  cellCycleExitClosed : N.cellCycleExit
  neuronalDifferentiationClosed : N.neuronalDifferentiation

def NeurogenesisRegulationClosed (N : NeurogenesisRegulationPackage) : Prop :=
  N.proneuralGenes ∧ N.notchDeltaInhibition ∧ N.cellCycleExit ∧ N.neuronalDifferentiation

theorem neurogenesis_regulation_closed_from_evidence
    (N : NeurogenesisRegulationPackage) (E : NeurogenesisRegulationEvidence N) :
    NeurogenesisRegulationClosed N := by
  exact And.intro E.proneuralGenesClosed
    (And.intro E.notchDeltaInhibitionClosed
      (And.intro E.cellCycleExitClosed E.neuronalDifferentiationClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse