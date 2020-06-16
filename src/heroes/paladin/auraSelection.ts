import { SwapBookActions, SwapBookConditions} from '../../swapBook/triggers'

export function InitAuraSelection(hero: Unit) {
    let auraSelectionTrigger = CreateTrigger()

    TriggerRegisterUnitEvent(auraSelectionTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(auraSelectionTrigger, Condition(() => SwapBookConditions(udg_AuraBooks)))
    TriggerAddAction(auraSelectionTrigger, () => SwapBookActions(udg_AuraBooks))
}