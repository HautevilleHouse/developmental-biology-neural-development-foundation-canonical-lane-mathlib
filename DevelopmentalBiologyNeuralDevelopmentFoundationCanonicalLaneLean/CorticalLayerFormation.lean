import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean

structure CorticalLayerFormationPackage where
  radialGlialGuidedMigration : Prop
  insideOutLayering : Prop
  corticalPlateExpansion : Prop
  layerSpecificMarker : Prop
  subplateFormation : Prop

structure CorticalLayerFormationEvidence (C : CorticalLayerFormationPackage) where
  radialGlialGuidedMigrationClosed : C.radialGlialGuidedMigration
  insideOutLayeringClosed : C.insideOutLayering
  corticalPlateExpansionClosed : C.corticalPlateExpansion
  layerSpecificMarkerClosed : C.layerSpecificMarker
  subplateFormationClosed : C.subplateFormation

def CorticalLayerFormationClosed (C : CorticalLayerFormationPackage) : Prop :=
  C.radialGlialGuidedMigration ∧ C.insideOutLayering ∧ C.corticalPlateExpansion ∧
  C.layerSpecificMarker ∧ C.subplateFormation

theorem cortical_layer_formation_closed_from_evidence
    (C : CorticalLayerFormationPackage) (E : CorticalLayerFormationEvidence C) :
    CorticalLayerFormationClosed C := by
  exact And.intro E.radialGlialGuidedMigrationClosed
    (And.intro E.insideOutLayeringClosed
      (And.intro E.corticalPlateExpansionClosed
        (And.intro E.layerSpecificMarkerClosed E.subplateFormationClosed)))

end DevelopmentalBiologyNeuralDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse