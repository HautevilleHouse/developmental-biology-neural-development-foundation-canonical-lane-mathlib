import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralNetworkDynamicsPackage where
  neuronPopulation : Type u
  synapticPlasticity : Prop
  networkOscillations : Prop
  spikeTimingDependence : Prop
  informationPropagation : Prop

structure NeuralNetworkDynamicsEvidence (N : NeuralNetworkDynamicsPackage) where
  synapticPlasticityClosed : N.synapticPlasticity
  networkOscillationsClosed : N.networkOscillations
  spikeTimingDependenceClosed : N.spikeTimingDependence
  informationPropagationClosed : N.informationPropagation

def NeuralNetworkDynamicsClosed (N : NeuralNetworkDynamicsPackage) : Prop :=
  N.synapticPlasticity ∧ N.networkOscillations ∧ N.spikeTimingDependence ∧ N.informationPropagation

theorem neural_network_dynamics_closed_from_evidence (N : NeuralNetworkDynamicsPackage)
    (E : NeuralNetworkDynamicsEvidence N) : NeuralNetworkDynamicsClosed N := by
  exact And.intro E.synapticPlasticityClosed
    (And.intro E.networkOscillationsClosed
      (And.intro E.spikeTimingDependenceClosed E.informationPropagationClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse