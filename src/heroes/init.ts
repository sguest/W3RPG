import { ApplyLevelStats } from './levelStats';
import { InitPaladin } from './paladin/init';
import { InitSkillLevels } from './skillLevels';
import { InitFarSeer } from './farSeer/init';
import { InitDemonHunter } from './demonHunter/init';

function HeroLevelActions() {
    let hero = GetLevelingUnit()
    ApplyLevelStats(hero)
    SetPlayerTechResearched(GetOwningPlayer(hero), FourCC('R000'), GetHeroLevel(hero))
}

function CreateHeroLevelTrigger(hero: Unit) {
    let levelTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(levelTrigger, hero, EVENT_UNIT_HERO_LEVEL)
    TriggerAddAction(levelTrigger, HeroLevelActions)
}

function InitHero(hero: Unit) {
    let unitType = GetUnitTypeId(hero)
    CreateHeroLevelTrigger(hero)

    if (unitType == FourCC('Hpal')) {
        InitPaladin(hero)
    } else if(unitType == FourCC('Ofar')) {
        InitFarSeer(hero)
    } else if(unitType == FourCC('Edem')) {
        InitDemonHunter(hero)
    }
}

function HeroSoldActions() {
    let buyer = GetBuyingUnit()
    let hero = GetSoldUnit()
    let targetLocation = GetRectCenter(gg_rct_HeroSpawn)

    RemoveUnit(buyer)
    SetUnitPositionLoc(hero, targetLocation)
    PanCameraToTimedLocForPlayer(GetOwningPlayer(hero), targetLocation, 0)

    udg_PlayerHeroes[GetPlayerId(GetOwningPlayer(hero))] = hero
    InitHero(hero)

    RemoveLocation(targetLocation)
}

function InitHeroSelectionPlayer() {
    let picked = GetEnumPlayer()
    let spawnLocation = GetRectCenter(gg_rct_HeroSelection)

    CreateUnitAtLoc(picked, FourCC('h001'), spawnLocation, 270)
    RemoveLocation(spawnLocation)
}

function InitHeroSelection() {
    let heroSoldTrigger = CreateTrigger();
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_halt_0213, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_oalt_0001, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_uaod_0216, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_eate_0217, EVENT_UNIT_SELL)
    TriggerAddAction(heroSoldTrigger, HeroSoldActions)

    ForForce(GetPlayersAll(), InitHeroSelectionPlayer)
}

export function InitHeroes() {
    InitHeroSelection();
    InitSkillLevels();
}