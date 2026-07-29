import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuronalDifferentiationPackage where
  progenitorCells : Type u
  neurogenesis : Prop
  axonGuidance : Prop
  synapseFormation : Prop
  functionalCircuitry : Prop

structure NeuronalDifferentiationEvidence (N : NeuronalDifferentiationPackage) where
  neurogenesisClosed : N.neurogenesis
  axonGuidanceClosed : N.axonGuidance
  synapseFormationClosed : N.synapseFormation
  functionalCircuitryClosed : N.functionalCircuitry

def NeuronalDifferentiationClosed (N : NeuronalDifferentiationPackage) : Prop :=
  N.neurogenesis ∧ N.axonGuidance ∧ N.synapseFormation ∧ N.functionalCircuitry

theorem neuronal_differentiation_closed_from_evidence (N : NeuronalDifferentiationPackage)
    (E : NeuronalDifferentiationEvidence N) : NeuronalDifferentiationClosed N := by
  exact And.intro E.neurogenesisClosed
    (And.intro E.axonGuidanceClosed
      (And.intro E.synapseFormationClosed E.functionalCircuitryClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse