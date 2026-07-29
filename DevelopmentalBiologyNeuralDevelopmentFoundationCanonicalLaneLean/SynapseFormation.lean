import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure SynapseFormationPackage where
  presynapticDifferentiation : Prop
  postsynapticScaffolding : Prop
  synapticVesicleClustering : Prop
  receptorClustering : Prop
  synapticTransmissionInitiation : Prop

structure SynapseFormationEvidence (S : SynapseFormationPackage) where
  presynapticDifferentiationClosed : S.presynapticDifferentiation
  postsynapticScaffoldingClosed : S.postsynapticScaffolding
  synapticVesicleClusteringClosed : S.synapticVesicleClustering
  receptorClusteringClosed : S.receptorClustering
  synapticTransmissionInitiationClosed : S.synapticTransmissionInitiation

def SynapseFormationClosed (S : SynapseFormationPackage) : Prop :=
  S.presynapticDifferentiation ∧ S.postsynapticScaffolding ∧
  S.synapticVesicleClustering ∧ S.receptorClustering ∧
  S.synapticTransmissionInitiation

theorem synapse_formation_closed_from_evidence
    (S : SynapseFormationPackage) (E : SynapseFormationEvidence S) :
    SynapseFormationClosed S := by
  exact And.intro E.presynapticDifferentiationClosed
    (And.intro E.postsynapticScaffoldingClosed
      (And.intro E.synapticVesicleClusteringClosed
        (And.intro E.receptorClusteringClosed
          E.synapticTransmissionInitiationClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse