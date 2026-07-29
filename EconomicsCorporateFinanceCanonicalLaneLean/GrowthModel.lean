import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure ProductionFunction where
  capital : Type
  labor : Type
  output : capital -> labor -> Real

structure GrowthModel where
  production : ProductionFunction
  savingsRate : Real
  depreciationRate : Real
  steadyState : Prop
  convergence : Prop

structure GrowthEvidence (M : GrowthModel) where
  steadyStateClosed : M.steadyState
  convergenceClosed : M.convergence

def GrowthModelClosed (M : GrowthModel) : Prop :=
  M.steadyState ∧ M.convergence

theorem growth_model_closed_from_evidence (M : GrowthModel)
    (ev : GrowthEvidence M) : GrowthModelClosed M :=
  And.intro ev.steadyStateClosed ev.convergenceClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse