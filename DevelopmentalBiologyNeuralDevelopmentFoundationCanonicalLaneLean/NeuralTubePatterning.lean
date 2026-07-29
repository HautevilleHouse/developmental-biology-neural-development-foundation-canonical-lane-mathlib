import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralTubePatterningPackage where
  signalingCenterEstablished : Prop
  morphogenGradientFormed : Prop
  dorsalVentralPolarity : Prop
  progenitorDomainSpecified : Prop
  neurogenesisInitiated : Prop

structure NeuralTubePatterningEvidence (N : NeuralTubePatterningPackage) where
  signalingCenterEstablishedClosed : N.signalingCenterEstablished
  morphogenGradientFormedClosed : N.morphogenGradientFormed
  dorsalVentralPolarityClosed : N.dorsalVentralPolarity
  progenitorDomainSpecifiedClosed : N.progenitorDomainSpecified
  neurogenesisInitiatedClosed : N.neurogenesisInitiated

def NeuralTubePatterningClosed (N : NeuralTubePatterningPackage) : Prop :=
  N.signalingCenterEstablished ∧ N.morphogenGradientFormed ∧
  N.dorsalVentralPolarity ∧ N.progenitorDomainSpecified ∧
  N.neurogenesisInitiated

theorem neural_tube_patterning_closed_from_evidence
    (N : NeuralTubePatterningPackage) (E : NeuralTubePatterningEvidence N) :
    NeuralTubePatterningClosed N := by
  exact And.intro E.signalingCenterEstablishedClosed
    (And.intro E.morphogenGradientFormedClosed
      (And.intro E.dorsalVentralPolarityClosed
        (And.intro E.progenitorDomainSpecifiedClosed
          E.neurogenesisInitiatedClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse