import { HealUnit } from "src/util/heal"
import { SetArmorMod } from "src/statMod/main"
import { StartShield, ShouldRemoveShield, EndShield } from "./shields"

function EarthShieldAttackedActions() {
    let triggerHandle = GetHandleId(GetTriggeringTrigger())
    let lastActivationHash = StringHash("LastActivation")
    let lastActivation = LoadInteger(udg_ShieldTable, triggerHandle, lastActivationHash)

    if(udg_ElapsedSeconds - lastActivation >= 6) {
        HealUnit(GetAttackedUnitBJ(), LoadReal(udg_ShieldTable, triggerHandle, StringHash("HealAmount")))
        SaveInteger(udg_ShieldTable, triggerHandle, lastActivationHash, udg_ElapsedSeconds)
        let healEffect = AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Rejuvenation\\RejuvenationTarget.mdl", GetAttackedUnitBJ(), "origin")

        PolledWait(4)
        DestroyEffect(healEffect)
    }
}

function EarthShieldActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let markerAbility = FourCC('A02J')
    let armorAmount = GetHeroInt(caster, true) * 0.1
    let currentIndex = StartShield(caster, target, markerAbility)

    let attackedTrigger = CreateTrigger()
    let attackedTriggerAction = TriggerAddAction(attackedTrigger, EarthShieldAttackedActions)
    TriggerRegisterUnitEvent(attackedTrigger, target, EVENT_UNIT_ATTACKED)
    SaveReal(udg_ShieldTable, GetHandleId(attackedTrigger), StringHash("HealAmount"), GetHeroInt(caster, true) * 2.0)

    SetArmorMod(target, armorAmount)

    while(!ShouldRemoveShield(caster, target, currentIndex)) {
        PolledWait(1)
    }

    SetArmorMod(target, -armorAmount)
    EndShield(target, markerAbility)

    TriggerRemoveAction(attackedTrigger, attackedTriggerAction)
    DestroyTrigger(attackedTrigger)
}

export function InitEarthShield(hero: Unit) {
    let earthShieldTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(earthShieldTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerAddCondition(earthShieldTrigger, Condition(() => GetSpellAbilityId() === FourCC('A02H')))
    TriggerAddAction(earthShieldTrigger, EarthShieldActions)
}