import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure SynapseFormationPackage (A : AdmissibleClass) where
  presynapticDifferentiation : Prop
  postsynapticReceptorClustering : Prop
  activityDependentRefinement : Prop
  longTermPotentiationMechanism : Prop

structure SynapseFormationEvidence {A : AdmissibleClass} (S : SynapseFormationPackage A) where
  presynapticDifferentiationClosed : S.presynapticDifferentiation
  postsynapticReceptorClusteringClosed : S.postsynapticReceptorClustering
  activityDependentRefinementClosed : S.activityDependentRefinement
  longTermPotentiationMechanismClosed : S.longTermPotentiationMechanism

def SynapseFormationClosed {A : AdmissibleClass} (S : SynapseFormationPackage A) : Prop :=
  S.presynapticDifferentiation ∧ S.postsynapticReceptorClustering ∧ S.activityDependentRefinement ∧ S.longTermPotentiationMechanism

theorem synapse_formation_closed_from_evidence {A : AdmissibleClass} (S : SynapseFormationPackage A) (E : SynapseFormationEvidence S) :
    SynapseFormationClosed S := by
  exact And.intro E.presynapticDifferentiationClosed (And.intro E.postsynapticReceptorClusteringClosed (And.intro E.activityDependentRefinementClosed E.longTermPotentiationMechanismClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse