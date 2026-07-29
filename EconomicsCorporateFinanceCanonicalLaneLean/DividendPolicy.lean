import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure DividendPolicyPackage where
  dividendIrrelevance : Prop
  clienteleEffect : Prop
  signalingHypothesis : Prop
  agencyCosts : Prop
  payoutPolicyOptimal : Prop

structure DividendPolicyEvidence (D : DividendPolicyPackage) where
  dividendIrrelevanceClosed : D.dividendIrrelevance
  clienteleEffectClosed : D.clienteleEffect
  signalingHypothesisClosed : D.signalingHypothesis
  agencyCostsClosed : D.agencyCosts
  payoutPolicyOptimalClosed : D.payoutPolicyOptimal

def DividendPolicyClosed (D : DividendPolicyPackage) : Prop :=
  D.dividendIrrelevance ∧ D.clienteleEffect ∧
  D.signalingHypothesis ∧ D.agencyCosts ∧ D.payoutPolicyOptimal

theorem dividend_policy_closed_from_evidence (D : DividendPolicyPackage)
    (E : DividendPolicyEvidence D) : DividendPolicyClosed D := by
  exact And.intro E.dividendIrrelevanceClosed
    (And.intro E.clienteleEffectClosed
      (And.intro E.signalingHypothesisClosed
        (And.intro E.agencyCostsClosed E.payoutPolicyOptimalClosed)))

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse