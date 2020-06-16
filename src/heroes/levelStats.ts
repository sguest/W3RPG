import { SetStatMod } from '../statMod/main'

//1 agi = 0.02 attack speed (specified in 1 = 1% = 0.01 attack speed value)
//1 agi = 0.30 armor (-2 base)
//1 str = 25 hp
//1 str = 0.05 regen
//1 int = 15 mana
//1 int = 0.05 mana regen
export function InitLevelStats(unitType: number, health: number, healthRegen: number, attackSpeed: number, armor: number, mana: number, manaRegen: number) {
    SaveReal(udg_HeroLevelStats, unitType, StringHash("health"), health)
    SaveReal(udg_HeroLevelStats, unitType, StringHash("healthRegen"), healthRegen)
    SaveReal(udg_HeroLevelStats, unitType, StringHash("attackSpeed"), attackSpeed)
    SaveReal(udg_HeroLevelStats, unitType, StringHash("armor"), armor)
    SaveReal(udg_HeroLevelStats, unitType, StringHash("mana"), mana)
    SaveReal(udg_HeroLevelStats, unitType, StringHash("manaRegen"), manaRegen)
}

function ApplyLevelStat(hero: Unit, statName: string){
    let level = GetHeroLevel(hero)
    let unitType = GetUnitTypeId(hero)
    let unitHandle = GetHandleId(hero)
    let nameHash = StringHash(statName)
    let currentValue = LoadInteger(udg_HeroLevelStats, unitHandle, nameHash)
    let levelValue = LoadReal(udg_HeroLevelStats, unitType, nameHash)
    let targetValue = math.floor((level - 1) * levelValue)
    let delta = targetValue - currentValue
    SetStatMod(hero, statName, delta)
    SaveInteger(udg_HeroLevelStats, unitHandle, nameHash, targetValue)
}

export function ApplyLevelStats(hero: Unit) {
    ApplyLevelStat(hero, "health")
    ApplyLevelStat(hero, "healthRegen")
    ApplyLevelStat(hero, "attackSpeed")
    ApplyLevelStat(hero, "armor")
    ApplyLevelStat(hero, "mana")
    ApplyLevelStat(hero, "manaRegen")
}