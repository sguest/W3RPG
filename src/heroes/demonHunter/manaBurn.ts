function ManaBurnActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let casterAgi = GetHeroAgi(caster, true)
    let damageAmount = casterAgi * 8

    let casterX = GetUnitX(caster)
    let casterY = GetUnitY(caster)
    let targetX = GetUnitX(target)
    let targetY = GetUnitY(target)
    let bolt = AddLightning("MBUR", true, casterX, casterY, targetX, targetY)
    let text = CreateTextTagUnitBJ("-" + damageAmount, target, 0, 10, 30, 30, 100, 0)
    UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
    SetUnitManaBJ(target, GetUnitState(target, UNIT_STATE_MANA) - damageAmount)
    SetTextTagVelocityBJ(text, 64, 90)
    SetTextTagPermanent(text, false)
    SetTextTagLifespan(text, 5)
    SetTextTagFadepoint(text, 3)

    PolledWait(1)

    DestroyLightning(bolt)
    DestroyTextTag(text)
}

export function InitManaBurn(hero: Unit) {
    let manaBurnTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(manaBurnTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(manaBurnTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02K')))
    TriggerAddAction(manaBurnTrigger, ManaBurnActions)
}