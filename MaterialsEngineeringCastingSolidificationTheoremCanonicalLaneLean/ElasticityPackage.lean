import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  constitutiveLaw : Prop
  hookeLaw : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorClosed : E.stressTensor
  strainTensorClosed : E.strainTensor
  constitutiveLawClosed : E.constitutiveLaw
  hookeLawClosed : E.hookeLaw
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensor ∧ E.strainTensor ∧ E.constitutiveLaw ∧ E.hookeLaw ∧ E.youngModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressTensorClosed
    (And.intro Ev.strainTensorClosed
      (And.intro Ev.constitutiveLawClosed
        (And.intro Ev.hookeLawClosed
          (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed))))

end MaterialsEngineeringCastingSolidificationTheoremCanonicalLaneLean
end HautevilleHouse