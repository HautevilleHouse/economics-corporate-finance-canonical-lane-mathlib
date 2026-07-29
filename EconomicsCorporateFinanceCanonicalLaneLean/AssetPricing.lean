import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure Security where
  payoffs : Nat -> Real
  price : Real

structure AssetPricingModel where
  securities : List Security
  statePrices : List Real
  noArbitrage : Prop
  lawOfOnePrice : Prop

structure AssetPricingEvidence (M : AssetPricingModel) where
  noArbitrageClosed : M.noArbitrage
  lawOfOnePriceClosed : M.lawOfOnePrice

def AssetPricingClosed (M : AssetPricingModel) : Prop :=
  M.noArbitrage ∧ M.lawOfOnePrice

theorem asset_pricing_closed_from_evidence (M : AssetPricingModel)
    (ev : AssetPricingEvidence M) : AssetPricingClosed M :=
  And.intro ev.noArbitrageClosed ev.lawOfOnePriceClosed

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse