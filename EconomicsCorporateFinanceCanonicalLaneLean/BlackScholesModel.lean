import EconomicsCorporateFinanceCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Analysis.Calculus.Deriv

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure BlackScholesModelPackage {A : AdmissibleClass} where
  stockPrice : ℝ → ℝ
  volatility : ℝ
  riskFreeRate : ℝ
  strikePrice : ℝ
  maturity : ℝ
  partialDifferentialEquation : Prop
  hedgingStrategy : Prop
  optionPricingFormula : Prop

structure BlackScholesModelEvidence {A : AdmissibleClass}
    (P : BlackScholesModelPackage A) where
  partialDifferentialEquationClosed : P.partialDifferentialEquation
  hedgingStrategyClosed : P.hedgingStrategy
  optionPricingFormulaClosed : P.optionPricingFormula

def BlackScholesModelClosed {A : AdmissibleClass}
    (P : BlackScholesModelPackage A) : Prop :=
  P.partialDifferentialEquation ∧ P.hedgingStrategy ∧ P.optionPricingFormula

theorem black_scholes_model_closed_from_evidence
    {A : AdmissibleClass} (P : BlackScholesModelPackage A)
    (E : BlackScholesModelEvidence P) : BlackScholesModelClosed P := by
  exact And.intro E.partialDifferentialEquationClosed
    (And.intro E.hedgingStrategyClosed E.optionPricingFormulaClosed)

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
