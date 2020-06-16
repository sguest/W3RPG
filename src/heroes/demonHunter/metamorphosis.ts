import { SetStatMod } from "src/statMod/main"

function MetamorphosisActions() {
    let duration = 60
    let transformTime = 1.5

    let caster = GetSpellAbilityUnit()
    let casterAgi = GetHeroAgi(caster, true)
    let attackAmount = casterAgi * 0.75
    let healthAmount = casterAgi * 20

    PolledWait(transformTime)

    if (UnitHasBuffBJ(caster, FourCC('BEme'))) {
        SetStatMod(caster, "attack", attackAmount)
        SetStatMod(caster, "health", healthAmount)

        PolledWait(duration)

        SetStatMod(caster, "attack", -attackAmount)
        SetStatMod(caster, "health", -healthAmount)
    }
}

export function InitMetamorphosis(hero: Unit) {
    let metamorphosisTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(metamorphosisTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(metamorphosisTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02M')))
    TriggerAddAction(metamorphosisTrigger, MetamorphosisActions)
}