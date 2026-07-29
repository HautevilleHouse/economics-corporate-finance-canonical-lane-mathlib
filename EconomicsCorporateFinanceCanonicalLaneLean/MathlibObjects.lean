import EconomicsCorporateFinanceCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CorporateFinanceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CorporateFinanceAdmittedObject where
  space : CorporateFinanceSpace
  equilibriumExists : Prop
  paretoOptimal : Prop
  marketModel : Type
  marketTopology : TopologicalSpace marketModel
  completeMarket : Prop
  conclusion : completeMarket

structure CorporateFinanceEndgameState where
  object : CorporateFinanceAdmittedObject

def CorporateFinanceWitnessClosed (O : CorporateFinanceAdmittedObject) : Prop :=
  O.completeMarket

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
