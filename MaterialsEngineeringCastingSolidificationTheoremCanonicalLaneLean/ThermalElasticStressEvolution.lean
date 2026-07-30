import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure ThermalElasticStressPackage where
  thermalExpansionCoeff : ℝ
  elasticModulus : ℝ
  temperatureDistribution : ℝ → ℝ
  stressTensor : ℝ → ℝ × ℝ × ℝ
  compatibilityEquation : Prop

structure ThermalElasticStressEvidence (S : ThermalElasticStressPackage) where
  thermalExpansionCoeffClosed : S.thermalExpansionCoeff > 0
  elasticModulusClosed : S.elasticModulus > 0
  temperatureDistributionClosed : ∀ t, S.temperatureDistribution t > 0
  stressTensorClosed : ∀ t, Prod.fst (S.stressTensor t) + Prod.snd (Prod.snd (S.stressTensor t)) < 0
  compatibilityEquationClosed : S.compatibilityEquation

def ThermalElasticStressClosed (S : ThermalElasticStressPackage) : Prop :=
  S.thermalExpansionCoeff > 0 ∧ S.elasticModulus > 0 ∧
  (∀ t, S.temperatureDistribution t > 0) ∧
  (∀ t, Prod.fst (S.stressTensor t) + Prod.snd (Prod.snd (S.stressTensor t)) < 0) ∧
  S.compatibilityEquation

theorem thermal_elastic_stress_closed_from_evidence
    (S : ThermalElasticStressPackage)
    (E : ThermalElasticStressEvidence S) : ThermalElasticStressClosed S := by
  exact And.intro E.thermalExpansionCoeffClosed
    (And.intro E.elasticModulusClosed
      (And.intro E.temperatureDistributionClosed
        (And.intro E.stressTensorClosed
          E.compatibilityEquationClosed)))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse
