import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure CapitalStructurePackage where
  firmValue : Prop
  debtEquityRatio : Prop
  taxShieldBenefit : Prop
  bankruptcyCost : Prop
  optimalLeverage : Prop

structure CapitalStructureEvidence (P : CapitalStructurePackage) where
  firmValueClosed : P.firmValue
  debtEquityRatioClosed : P.debtEquityRatio
  taxShieldBenefitClosed : P.taxShieldBenefit
  bankruptcyCostClosed : P.bankruptcyCost
  optimalLeverageClosed : P.optimalLeverage

def CapitalStructureClosed (P : CapitalStructurePackage) : Prop :=
  P.firmValue ∧ P.debtEquityRatio ∧
  P.taxShieldBenefit ∧ P.bankruptcyCost ∧ P.optimalLeverage

theorem capital_structure_closed_from_evidence (P : CapitalStructurePackage)
    (E : CapitalStructureEvidence P) : CapitalStructureClosed P := by
  exact And.intro E.firmValueClosed
    (And.intro E.debtEquityRatioClosed
      (And.intro E.taxShieldBenefitClosed
        (And.intro E.bankruptcyCostClosed E.optimalLeverageClosed)))

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse