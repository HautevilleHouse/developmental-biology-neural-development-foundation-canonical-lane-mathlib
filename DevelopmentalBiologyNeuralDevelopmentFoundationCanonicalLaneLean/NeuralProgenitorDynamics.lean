import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeuralProgenitorPackage (A : AdmissibleClass) where
  symmetricDivisionRate : Prop
  asymmetricDivisionRate : Prop
  neurogenicSwitchSignal : Prop
  progenitorPoolHomeostasis : Prop

structure NeuralProgenitorEvidence {A : AdmissibleClass} (P : NeuralProgenitorPackage A) where
  symmetricDivisionRateClosed : P.symmetricDivisionRate
  asymmetricDivisionRateClosed : P.asymmetricDivisionRate
  neurogenicSwitchSignalClosed : P.neurogenicSwitchSignal
  progenitorPoolHomeostasisClosed : P.progenitorPoolHomeostasis

def NeuralProgenitorClosed {A : AdmissibleClass} (P : NeuralProgenitorPackage A) : Prop :=
  P.symmetricDivisionRate ∧ P.asymmetricDivisionRate ∧ P.neurogenicSwitchSignal ∧ P.progenitorPoolHomeostasis

theorem neural_progenitor_closed_from_evidence {A : AdmissibleClass} (P : NeuralProgenitorPackage A) (E : NeuralProgenitorEvidence P) :
    NeuralProgenitorClosed P := by
  exact And.intro E.symmetricDivisionRateClosed (And.intro E.asymmetricDivisionRateClosed (And.intro E.neurogenicSwitchSignalClosed E.progenitorPoolHomeostasisClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse