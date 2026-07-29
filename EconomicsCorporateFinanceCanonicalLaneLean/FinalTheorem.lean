import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

def ConstrainedCorporateFinanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_corporate_finance_endgame (A : AdmissibleClass) :
    ConstrainedCorporateFinanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
