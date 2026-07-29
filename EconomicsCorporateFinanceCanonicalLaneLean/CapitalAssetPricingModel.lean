import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure MarketPortfolio (A : Type u) where
  assets : List A
  returns : A → ℝ
  variance : A → ℝ
  covariance : A → A → ℝ

structure CapitalAssetPricingModel (A : Type u) (M : MarketPortfolio A) where
  riskFreeRate : ℝ
  expectedReturn : A → ℝ
  beta : A → ℝ
  securityMarketLine : Prop
  betaFormula : Prop

structure CAPMEvidence {A : Type u} {M : MarketPortfolio A} (C : CapitalAssetPricingModel A M) where
  securityMarketLineClosed : C.securityMarketLine
  betaFormulaClosed : C.betaFormula

def CapitalAssetPricingModelClosed {A : Type u} {M : MarketPortfolio A} (C : CapitalAssetPricingModel A M) : Prop :=
  C.securityMarketLine ∧ C.betaFormula

theorem capm_closed_from_evidence {A : Type u} {M : MarketPortfolio A}
    (C : CapitalAssetPricingModel A M) (Ev : CAPMEvidence C) : CapitalAssetPricingModelClosed C := by
  exact And.intro Ev.securityMarketLineClosed Ev.betaFormulaClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
