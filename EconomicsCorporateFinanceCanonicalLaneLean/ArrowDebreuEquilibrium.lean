import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure ArrowDebreuEconomy where
  states : Type u
  consumers : Type v
  endowments : consumers → states → ℝ
  utilityFunctions : consumers → (ℝ → ℝ)
  statePrices : states → ℝ
  marketClearance : Prop
  utilityMaximization : Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  marketClearanceClosed : E.marketClearance
  utilityMaximizationClosed : E.utilityMaximization

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEconomy) : Prop :=
  E.marketClearance ∧ E.utilityMaximization

theorem arrow_debreu_equilibrium_closed_from_evidence (E : ArrowDebreuEconomy)
    (Ev : ArrowDebreuEvidence E) : ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.marketClearanceClosed Ev.utilityMaximizationClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
