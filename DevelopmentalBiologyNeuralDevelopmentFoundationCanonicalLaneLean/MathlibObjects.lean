import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralDevelopmentSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralDevelopmentAdmittedObject where
  space : NeuralDevelopmentSpace
  neuralTubeFormation : Prop
  dorsalVentralPatterning : Prop
  neurogenesisRegulation : Prop
  conclusion : neuralTubeFormation ∧ dorsalVentralPatterning ∧ neurogenesisRegulation

structure NeuralDevelopmentEndgameState where
  object : NeuralDevelopmentAdmittedObject

def NeuralDevelopmentWitnessClosed (O : NeuralDevelopmentAdmittedObject) : Prop :=
  O.neuralTubeFormation ∧ O.dorsalVentralPatterning ∧ O.neurogenesisRegulation

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse