import { StartShield, ShouldRemoveShield, EndShield } from "./shields"

function LightningShieldActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let markerAbility = FourCC('A02G')
    let effects: Effect[] = []

    let currentIndex = StartShield(caster, target, markerAbility)

    while(!ShouldRemoveShield(caster, target, currentIndex)) {
        for(let effect of effects) {
            DestroyEffect(effect)
        }
        effects = [];

        let damageAmount = GetHeroInt(caster, true) * 0.5
        let targetLocation = GetUnitLoc(target)
        let targetGroup = GetUnitsInRangeOfLocAll(160.00, targetLocation)

        let picked = FirstOfGroup(targetGroup)
        while(picked !== null) {
            GroupRemoveUnit(targetGroup, picked)

            if(picked !== target && IsPlayerEnemy(GetOwningPlayer(picked), GetOwningPlayer(caster)) && !IsUnitDeadBJ(picked)) {
                table.insert(effects, AddSpecialEffectTarget("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldBuff.mdl", picked, "origin"))
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            }
            picked = FirstOfGroup(targetGroup)
        }

        RemoveLocation(targetLocation)
        DestroyGroup(targetGroup)

        PolledWait(1)
    }

    EndShield(target, markerAbility)
}

export function InitLightningShield(hero: Unit) {
    let lightningShieldTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(lightningShieldTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerAddCondition(lightningShieldTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02F')))
    TriggerAddAction(lightningShieldTrigger, LightningShieldActions)
}