import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure AxonGuidancePackage where
  growthConeMotility : Prop
  chemoattractants : Prop
  chemorepellents : Prop
  guidanceReceptors : Prop
  pathfindingConvergence : Prop

structure AxonGuidanceEvidence (A : AxonGuidancePackage) where
  growthConeMotilityClosed : A.growthConeMotility
  chemoattractantsClosed : A.chemoattractants
  chemorepellentsClosed : A.chemorepellents
  guidanceReceptorsClosed : A.guidanceReceptors
  pathfindingConvergenceClosed : A.pathfindingConvergence

def AxonGuidanceClosed (A : AxonGuidancePackage) : Prop :=
  A.growthConeMotility ∧ A.chemoattractants ∧ A.chemorepellents ∧
  A.guidanceReceptors ∧ A.pathfindingConvergence

theorem axon_guidance_closed_from_evidence
    (A : AxonGuidancePackage) (E : AxonGuidanceEvidence A) :
    AxonGuidanceClosed A := by
  exact And.intro E.growthConeMotilityClosed
    (And.intro E.chemoattractantsClosed
      (And.intro E.chemorepellentsClosed
        (And.intro E.guidanceReceptorsClosed E.pathfindingConvergenceClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse