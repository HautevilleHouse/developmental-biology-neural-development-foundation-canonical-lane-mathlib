import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure CorticalDevelopmentPackage where
  neurogenesisProgenitorDiversity : Prop
  neuronalMigration : Prop
  layerFormation : Prop
  circuitAssembly : Prop
  criticalPeriodPlasticity : Prop

structure CorticalDevelopmentEvidence (P : CorticalDevelopmentPackage) where
  neurogenesisProgenitorDiversityClosed : P.neurogenesisProgenitorDiversity
  neuronalMigrationClosed : P.neuronalMigration
  layerFormationClosed : P.layerFormation
  circuitAssemblyClosed : P.circuitAssembly
  criticalPeriodPlasticityClosed : P.criticalPeriodPlasticity

def CorticalDevelopmentClosed (P : CorticalDevelopmentPackage) : Prop :=
  P.neurogenesisProgenitorDiversity ∧ P.neuronalMigration ∧ P.layerFormation ∧
  P.circuitAssembly ∧ P.criticalPeriodPlasticity

theorem cortical_development_closed_from_evidence (P : CorticalDevelopmentPackage)
    (E : CorticalDevelopmentEvidence P) : CorticalDevelopmentClosed P := by
  exact And.intro E.neurogenesisProgenitorDiversityClosed
    (And.intro E.neuronalMigrationClosed
      (And.intro E.layerFormationClosed
        (And.intro E.circuitAssemblyClosed E.criticalPeriodPlasticityClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse