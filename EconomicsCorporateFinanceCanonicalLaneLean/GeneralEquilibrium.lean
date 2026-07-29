import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure ArrowDebreuEconomy where
  agents : Type
  goods : Type
  endowments : agents -> goods -> Real
  utilities : agents -> (goods -> Real) -> Real

structure Equilibrium where
  prices : goods -> Real
  allocations : agents -> goods -> Real
  marketClearing : Prop
  optimality : Prop

structure GeneralEquilibriumEvidence (E : ArrowDebreuEconomy) (Eq : Equilibrium) where
  marketClearingClosed : Eq.marketClearing
  optimalityClosed : Eq.optimality

def GeneralEquilibriumClosed (E : ArrowDebreuEconomy) (Eq : Equilibrium) : Prop :=
  Eq.marketClearing ∧ Eq.optimality

theorem general_equilibrium_closed_from_evidence (E : ArrowDebreuEconomy) (Eq : Equilibrium)
    (ev : GeneralEquilibriumEvidence E Eq) : GeneralEquilibriumClosed E Eq :=
  And.intro ev.marketClearingClosed ev.optimalityClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse