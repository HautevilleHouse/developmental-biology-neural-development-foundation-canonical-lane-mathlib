import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralTubeFormationPackage where
  ectodermCompetence : Prop
  notochordSignaling : Prop
  neuralPlateBending : Prop
  tubeClosure : Prop

structure NeuralTubeFormationEvidence (N : NeuralTubeFormationPackage) where
  ectodermCompetenceClosed : N.ectodermCompetence
  notochordSignalingClosed : N.notochordSignaling
  neuralPlateBendingClosed : N.neuralPlateBending
  tubeClosureClosed : N.tubeClosure

def NeuralTubeFormationClosed (N : NeuralTubeFormationPackage) : Prop :=
  N.ectodermCompetence ∧ N.notochordSignaling ∧ N.neuralPlateBending ∧ N.tubeClosure

theorem neural_tube_formation_closed_from_evidence
    (N : NeuralTubeFormationPackage) (E : NeuralTubeFormationEvidence N) :
    NeuralTubeFormationClosed N := by
  exact And.intro E.ectodermCompetenceClosed
    (And.intro E.notochordSignalingClosed
      (And.intro E.neuralPlateBendingClosed E.tubeClosureClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse