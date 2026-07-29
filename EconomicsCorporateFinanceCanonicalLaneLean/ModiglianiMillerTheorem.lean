import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure Firm (A : Type u) where
  assetsValue : ℝ
  equityValue : ℝ
  debtValue : ℝ
  equityCost : ℝ
  debtCost : ℝ
  corporateTaxRate : ℝ

structure ModiglianiMillerProposition (A : Type u) (F : Firm A) where
  propositionI : Prop
  propositionII : Prop
  noArbitrage : Prop

structure ModiglianiMillerEvidence {A : Type u} {F : Firm A} (M : ModiglianiMillerProposition A F) where
  propositionIClosed : M.propositionI
  propositionIIClosed : M.propositionII
  noArbitrageClosed : M.noArbitrage

def ModiglianiMillerTheoremClosed {A : Type u} {F : Firm A} (M : ModiglianiMillerProposition A F) : Prop :=
  M.propositionI ∧ M.propositionII ∧ M.noArbitrage

theorem modigliani_miller_closed_from_evidence {A : Type u} {F : Firm A}
    (M : ModiglianiMillerProposition A F) (Ev : ModiglianiMillerEvidence M) :
    ModiglianiMillerTheoremClosed M := by
  exact And.intro Ev.propositionIClosed (And.intro Ev.propositionIIClosed Ev.noArbitrageClosed)

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
