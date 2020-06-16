function SealOfRighteousnessActions() {
    let caster = GetAttacker()
    let target = GetAttackedUnitBJ()
    let casterStrength = GetHeroStr(caster, true)
    let level = GetUnitAbilityLevel(caster, FourCC('A008'))

    UnitDamageTargetBJ(caster, target, casterStrength * 0.5 * level, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
}

export function InitSealOfRighteousness() {
    let sealOfRighteousnessTrigger = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(sealOfRighteousnessTrigger, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(sealOfRighteousnessTrigger, Condition(() => GetUnitAbilityLevel(GetAttacker(), FourCC('A008')) >= 1))
    TriggerAddAction(sealOfRighteousnessTrigger, SealOfRighteousnessActions)
}