import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure DendriteTipGrowth where
  interfaceKinetics : Prop
  soluteRedistribution : Prop
  tipUndercooling : Prop
  growthVelocity : Prop

dendriteTipEvidence : DendriteTipGrowth

dendriteTipEvidence := {
  interfaceKinetics := by
    exact True.intro
  soluteRedistribution := by
    exact True.intro
  tipUndercooling := by
    exact True.intro
  growthVelocity := by
    exact True.intro
}

structure GrainStructurePackage where
  equiaxedGrainFormation : Prop
  columnarToEquiaxedTransition : Prop
  grainSizePrediction : Prop
  textureEvolution : Prop

structure MicrosegregationModel where
  solidificationPath : Prop
  backDiffusionCoefficient : Prop
  microsegregationProfile : Prop
  homogenizationKinetics : Prop

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse