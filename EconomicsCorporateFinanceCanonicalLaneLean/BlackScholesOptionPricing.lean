import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure OptionContract where
  strike : ℝ
  expiry : ℝ
  optionType : String -- "call" or "put"

structure UnderlyingAsset where
  price : ℝ
  volatility : ℝ
  dividendYield : ℝ

structure BlackScholesModel (U : UnderlyingAsset) (O : OptionContract) where
  riskFreeRate : ℝ
  blackScholesEquation : Prop
  closedFormSolution : Prop
  hedgingStrategy : Prop

structure BlackScholesEvidence {U : UnderlyingAsset} {O : OptionContract}
    (B : BlackScholesModel U O) where
  blackScholesEquationClosed : B.blackScholesEquation
  closedFormSolutionClosed : B.closedFormSolution
  hedgingStrategyClosed : B.hedgingStrategy

def BlackScholesPricingClosed {U : UnderlyingAsset} {O : OptionContract}
    (B : BlackScholesModel U O) : Prop :=
  B.blackScholesEquation ∧ B.closedFormSolution ∧ B.hedgingStrategy

theorem black_scholes_closed_from_evidence {U : UnderlyingAsset} {O : OptionContract}
    (B : BlackScholesModel U O) (Ev : BlackScholesEvidence B) : BlackScholesPricingClosed B := by
  exact And.intro Ev.blackScholesEquationClosed
    (And.intro Ev.closedFormSolutionClosed Ev.hedgingStrategyClosed)

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
