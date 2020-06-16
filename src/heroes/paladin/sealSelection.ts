import { SwapBookConditions, SwapBookActions } from "src/swapBook/triggers"

export function InitSealSelection(hero: Unit) {
    let sealSelectionTrigger = CreateTrigger()

    TriggerRegisterUnitEvent(sealSelectionTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(sealSelectionTrigger, Condition(() => SwapBookConditions(udg_SealBooks)))
    TriggerAddAction(sealSelectionTrigger, () => SwapBookActions(udg_SealBooks))
}