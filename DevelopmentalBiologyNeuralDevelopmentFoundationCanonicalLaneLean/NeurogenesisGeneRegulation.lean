import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure NeurogenesisGeneRegulationPackage where
  proneuralGenes : Prop
  notchSignaling : Prop
  lateralInhibition : Prop
  cellCycleExit : Prop

structure NeurogenesisGeneRegulationEvidence (N : NeurogenesisGeneRegulationPackage) where
  proneuralGenesClosed : N.proneuralGenes
  notchSignalingClosed : N.notchSignaling
  lateralInhibitionClosed : N.lateralInhibition
  cellCycleExitClosed : N.cellCycleExit

def NeurogenesisGeneRegulationClosed (N : NeurogenesisGeneRegulationPackage) : Prop :=
  N.proneuralGenes ∧ N.notchSignaling ∧ N.lateralInhibition ∧ N.cellCycleExit

theorem neurogenesis_gene_regulation_closed_from_evidence
    (N : NeurogenesisGeneRegulationPackage) (E : NeurogenesisGeneRegulationEvidence N) :
    NeurogenesisGeneRegulationClosed N := by
  exact And.intro E.proneuralGenesClosed
    (And.intro E.notchSignalingClosed
      (And.intro E.lateralInhibitionClosed E.cellCycleExitClosed))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse