import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure SynapseFormationPackage where
  synapticVesicleClustering : Prop
  postsynapticDensityAssembly : Prop
  neurotrophinSignaling : Prop
  activityDependentPlasticity : Prop
  pruningMechanism : Prop

structure SynapseFormationEvidence (S : SynapseFormationPackage) where
  synapticVesicleClusteringClosed : S.synapticVesicleClustering
  postsynapticDensityAssemblyClosed : S.postsynapticDensityAssembly
  neurotrophinSignalingClosed : S.neurotrophinSignaling
  activityDependentPlasticityClosed : S.activityDependentPlasticity
  pruningMechanismClosed : S.pruningMechanism

def SynapseFormationClosed (S : SynapseFormationPackage) : Prop :=
  S.synapticVesicleClustering ∧ S.postsynapticDensityAssembly ∧
  S.neurotrophinSignaling ∧ S.activityDependentPlasticity ∧ S.pruningMechanism

theorem synapse_formation_closed_from_evidence
    (S : SynapseFormationPackage) (E : SynapseFormationEvidence S) :
    SynapseFormationClosed S := by
  exact And.intro E.synapticVesicleClusteringClosed
    (And.intro E.postsynapticDensityAssemblyClosed
      (And.intro E.neurotrophinSignalingClosed
        (And.intro E.activityDependentPlasticityClosed E.pruningMechanismClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse