import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure Project where
  initialInvestment : Real
  cashFlows : Nat -> Real
  discountRate : Real

structure NetPresentValue (P : Project) where
  npv : Real
  positiveNPV : Prop
  npvFormula : npv = -P.initialInvestment + ∑ (t : Nat), P.cashFlows t / ((1 + P.discountRate) ^ (t+1 : Nat))

structure NPVEvidence (P : Project) (NPV : NetPresentValue P) where
  positiveNPVClosed : NPV.positiveNPV
  npvFormulaClosed : NPV.npvFormula

def NPVClosed (P : Project) (NPV : NetPresentValue P) : Prop :=
  NPV.positiveNPV ∧ NPV.npvFormula

theorem npv_closed_from_evidence (P : Project) (NPV : NetPresentValue P)
    (ev : NPVEvidence P NPV) : NPVClosed P NPV :=
  And.intro ev.positiveNPVClosed ev.npvFormulaClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse