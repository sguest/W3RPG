import { HealUnit } from "../../util/heal"

function HolyLightActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let targetLocation = GetUnitLoc(target)
    let aoeTargets = GetUnitsInRangeOfLocAll(300.00, targetLocation)
    let level = GetUnitAbilityLevel(caster, FourCC('A000'))

    let casterStrength = GetHeroStr(caster, true)

    if (IsPlayerEnemy(GetOwningPlayer(caster), GetOwningPlayer(target))) {
        //R2I?
        let damageAmount = casterStrength * (level + 3)
        //R2I?
        let healAmount = casterStrength * (level * 0.5 + 2.5)

        UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)

        let picked = FirstOfGroup(aoeTargets)
        while(picked != null) {
            GroupRemoveUnit(aoeTargets, picked)

            if (IsPlayerAlly(GetOwningPlayer(picked), GetOwningPlayer(caster))) {
                HealUnit(picked, healAmount)
            }
            picked = FirstOfGroup(aoeTargets)
        }
    } else {
        //R2I?
        let damageAmount = casterStrength * (level * 0.5 + 3.5)
        //R2I?
        let healAmount = casterStrength * (level + 5)

        HealUnit(target, healAmount)

        let picked = FirstOfGroup(aoeTargets)
        while(picked != null) {
            GroupRemoveUnit(aoeTargets, picked)

            if(IsPlayerEnemy(GetOwningPlayer(picked), GetOwningPlayer(caster)) && !IsUnitDeadBJ(picked)) {
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            }
            picked = FirstOfGroup(aoeTargets)
        }
    }

    DestroyGroup(aoeTargets)
    RemoveLocation(targetLocation)
}

export function InitHolyLight(hero: Unit) {
    let holyLightTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(holyLightTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(holyLightTrigger, Condition(() => GetSpellAbilityId() == FourCC('A000')))
    TriggerAddAction(holyLightTrigger, HolyLightActions)
}