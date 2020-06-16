import { SetAttackMod, SetHealthMod, SetArmorMod, SetHealthRegenMod, SetAttackSpeedMod } from "src/statMod/main"

function FeralSpiritActions() {
    let caster = GetSummoningUnit()
    let summoned = GetSummonedUnit()
    let casterStr = GetHeroStr(caster, true)
    let casterAgi = GetHeroAgi(caster, true)
    let casterInt = GetHeroInt(caster, true)

    SetAttackMod(summoned, casterInt * 0.8)
    SetHealthMod(summoned, casterStr * 20)
    SetArmorMod(summoned, casterAgi * 0.2)
    SetHealthRegenMod(summoned, casterStr * 0.02)
    SetAttackSpeedMod(summoned, casterAgi * 2)
}

export function InitFeralSpirit(hero: Unit) {
    let feralSpiritTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(feralSpiritTrigger, hero, EVENT_UNIT_SUMMON)
    TriggerAddCondition(feralSpiritTrigger, Condition(()=> GetUnitTypeId(GetSummonedUnit()) === FourCC('o000')))
    TriggerAddAction(feralSpiritTrigger, FeralSpiritActions)
}