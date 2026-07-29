import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsCorporateFinanceCanonicalLaneLean

structure CorporateFinanceAdmittedObject where
  economy : Type
  equilibriumState : Prop
  valuationConsistency : Prop
  conclusion : valuationConsistency

structure AdmissibleClass where
  object : CorporateFinanceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CorporateFinanceAdmittedObject.conclusion A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsCorporateFinanceCanonicalLaneLean
end HautevilleHouse
