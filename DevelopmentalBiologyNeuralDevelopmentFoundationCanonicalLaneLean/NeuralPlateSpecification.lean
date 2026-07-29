import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralPlateSpecificationPackage where
  morphogenGradient : Prop
  gradientThreshold : Prop
  neuralPlateInduction : Prop
  markerExpression : Prop

structure NeuralPlateSpecificationEvidence (P : NeuralPlateSpecificationPackage) where
  morphogenGradientClosed : P.morphogenGradient
  gradientThresholdClosed : P.gradientThreshold
  neuralPlateInductionClosed : P.neuralPlateInduction
  markerExpressionClosed : P.markerExpression

def NeuralPlateSpecificationClosed (P : NeuralPlateSpecificationPackage) : Prop :=
  P.morphogenGradient ∧ P.gradientThreshold ∧ P.neuralPlateInduction ∧ P.markerExpression

theorem neural_plate_specification_closed_from_evidence
    (P : NeuralPlateSpecificationPackage) (E : NeuralPlateSpecificationEvidence P) :
    NeuralPlateSpecificationClosed P := by
  exact And.intro E.morphogenGradientClosed
    (And.intro E.gradientThresholdClosed
      (And.intro E.neuralPlateInductionClosed E.markerExpressionClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse