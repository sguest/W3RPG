import { UnitStunTarget } from '../../util/stun'
import { HealUnit } from '../../util/heal'

function JudgmentActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let casterLocation = GetUnitLoc(caster)
    let targetLocation = GetUnitLoc(target)
    let distance = DistanceBetweenPoints(casterLocation, targetLocation)
    let casterStrength = GetHeroStr(caster, true)
    let visualEffect: Effect

    PolledWait(distance / 1000)

    UnitDamageTargetBJ(caster, target, casterStrength * (GetUnitAbilityLevel(caster, FourCC('A00H')) + 1), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)

    //Seal of Righteousness
    if(GetUnitAbilityLevel(caster, FourCC('A008')) > 0) {
        let sealLevel = GetUnitAbilityLevel(caster, FourCC('A009'))
        UnitDamageTargetBJ(caster, target, casterStrength * (2 + sealLevel), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)

    //Seal of Vengeance
    } else if(GetUnitAbilityLevel(caster, FourCC('A006')) > 0) {
        let aoeTargets = GetUnitsInRangeOfLocAll(300.00, targetLocation)

        let picked = FirstOfGroup(aoeTargets)
        while(picked !== null) {
            GroupRemoveUnit(aoeTargets, picked)

            if(picked !== target && IsPlayerEnemy(GetOwningPlayer(caster), GetOwningPlayer(picked)) && !IsUnitDeadBJ(picked)) {
                UnitDamageTargetBJ(caster, picked, casterStrength * 1.5, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            }
        }

        visualEffect = AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCaster.mdl", target, "overhead")

        DestroyGroup(aoeTargets)
    //Seal of Light
    } else if(GetUnitAbilityLevel(caster, FourCC('A009')) > 0) {
        let sealLevel = GetUnitAbilityLevel(caster, FourCC('A009'))
        HealUnit(caster, casterStrength * (1 + sealLevel))
        visualEffect = AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", caster, "origin")
    //Seal of Justice
    } else if(GetUnitAbilityLevel(caster, FourCC('A00F')) > 0) {
        UnitStunTarget(caster, target, 4)
    }

    PolledWait(1)

    DestroyEffect(visualEffect!)
    RemoveLocation(casterLocation)
    RemoveLocation(targetLocation)
}

export function InitJudgment(hero: Unit) {
    let judgmentTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(judgmentTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(judgmentTrigger, Condition(() => GetSpellAbilityId() == FourCC('A00H')))
    TriggerAddAction(judgmentTrigger, JudgmentActions)
}