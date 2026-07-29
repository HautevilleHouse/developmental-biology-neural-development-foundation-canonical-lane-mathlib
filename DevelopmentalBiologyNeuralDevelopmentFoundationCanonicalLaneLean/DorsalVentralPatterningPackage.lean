import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure DorsalVentralPatterningPackage where
  shhGradient : Prop
  bmpSignaling : Prop
  nkxHomeodomain : Prop
  paxExpression : Prop

structure DorsalVentralPatterningEvidence (D : DorsalVentralPatterningPackage) where
  shhGradientClosed : D.shhGradient
  bmpSignalingClosed : D.bmpSignaling
  nkxHomeodomainClosed : D.nkxHomeodomain
  paxExpressionClosed : D.paxExpression

def DorsalVentralPatterningClosed (D : DorsalVentralPatterningPackage) : Prop :=
  D.shhGradient ∧ D.bmpSignaling ∧ D.nkxHomeodomain ∧ D.paxExpression

theorem dorsal_ventral_patterning_closed_from_evidence
    (D : DorsalVentralPatterningPackage) (E : DorsalVentralPatterningEvidence D) :
    DorsalVentralPatterningClosed D := by
  exact And.intro E.shhGradientClosed
    (And.intro E.bmpSignalingClosed
      (And.intro E.nkxHomeodomainClosed E.paxExpressionClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse