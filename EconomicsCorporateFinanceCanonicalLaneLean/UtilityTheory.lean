import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure PreferenceRelation (A : Type u) where
  relation : A → A → Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  monotonicity : Prop

structure UtilityFunction (A : Type u) where
  function : A → ℝ
  represents : PreferenceRelation A → Prop

structure UtilityEvidence {A : Type u} (P : PreferenceRelation A) (U : UtilityFunction A) where
  completenessClosed : P.completeness
  transitivityClosed : P.transitivity
  continuityClosed : P.continuity
  monotonicityClosed : P.monotonicity
  representsClosed : U.represents P

def UtilityRepresentationClosed {A : Type u} (P : PreferenceRelation A) (U : UtilityFunction A) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.continuity ∧ P.monotonicity ∧ U.represents P

theorem utility_representation_closed_from_evidence {A : Type u} (P : PreferenceRelation A)
    (U : UtilityFunction A) (Ev : UtilityEvidence P U) : UtilityRepresentationClosed P U := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.transitivityClosed
      (And.intro Ev.continuityClosed
        (And.intro Ev.monotonicityClosed Ev.representsClosed)))

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
