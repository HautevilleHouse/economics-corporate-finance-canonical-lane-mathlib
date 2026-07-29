import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure CapitalStructure where
  debtEquityChoice : Prop
  modiglianiMillerTheorem : Prop

def CorporateFinanceClosed : Prop :=
  True

structure CorporateFinanceCertificate (A : AdmissibleClass) where
  capitalStructure : CapitalStructure
  corporateFinanceClosed : CorporateFinanceClosed
  bridgeClosedFromCorporateFinance : bridgeClosed A.object
  gateClosedFromCorporateFinance : gateClosed A

theorem corporate_finance_yields_constrained_closure (A : AdmissibleClass) (C : CorporateFinanceCertificate A) :
    ConstrainedEconomicsClosure A := by
  exact And.intro C.bridgeClosedFromCorporateFinance C.gateClosedFromCorporateFinance

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
