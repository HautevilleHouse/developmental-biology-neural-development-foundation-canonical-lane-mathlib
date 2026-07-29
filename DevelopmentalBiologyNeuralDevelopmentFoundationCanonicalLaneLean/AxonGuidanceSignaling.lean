import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure AxonGuidancePackage (A : AdmissibleClass) where
  chemoattractantGradient : Prop
  chemorepellantGradient : Prop
  growthConeSensing : Prop
  midlineCrossingRegulation : Prop

structure AxonGuidanceEvidence {A : AdmissibleClass} (G : AxonGuidancePackage A) where
  chemoattractantGradientClosed : G.chemoattractantGradient
  chemorepellantGradientClosed : G.chemorepellantGradient
  growthConeSensingClosed : G.growthConeSensing
  midlineCrossingRegulationClosed : G.midlineCrossingRegulation

def AxonGuidanceClosed {A : AdmissibleClass} (G : AxonGuidancePackage A) : Prop :=
  G.chemoattractantGradient ∧ G.chemorepellantGradient ∧ G.growthConeSensing ∧ G.midlineCrossingRegulation

theorem axon_guidance_closed_from_evidence {A : AdmissibleClass} (G : AxonGuidancePackage A) (E : AxonGuidanceEvidence G) :
    AxonGuidanceClosed G := by
  exact And.intro E.chemoattractantGradientClosed (And.intro E.chemorepellantGradientClosed (And.intro E.growthConeSensingClosed E.midlineCrossingRegulationClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse