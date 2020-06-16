import { UnitStunTarget } from '../../util/stun'

function SealOfJusticeActions() {
    let caster = GetAttacker()
    let target = GetAttackedUnitBJ()
    let casterStrength = GetHeroStr(caster, true)

    if(GetRandomInt(1, 100) <= 25) {
        UnitDamageTargetBJ(caster, target, casterStrength * 2.0, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        UnitStunTarget(caster, target, 2)
    }
}

export function InitSealOfJustice() {
    let sealOfJusticeTrigger = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(sealOfJusticeTrigger, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(sealOfJusticeTrigger, Condition(() => GetUnitAbilityLevel(GetAttacker(), FourCC('A00F')) === 1))
    TriggerAddAction(sealOfJusticeTrigger, SealOfJusticeActions)
}