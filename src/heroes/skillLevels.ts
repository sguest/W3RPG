import { SwapBookSetLevel, SwapBookAddIfMissing } from "src/swapBook/triggers"

export function SetSkillUpgrade(upgradeId: number, skillId: number) {
    SaveInteger(udg_SkillLevelsTable, upgradeId, StringHash("Skill"), skillId)
}

export function SetSwapBookUpgrade(upgradeId: number, table: Hashtable) {
    SaveHashtableHandle(udg_SkillLevelsTable, upgradeId, StringHash("SwapBookTable"), table)
}

export function TrainSkill(hero: Unit, upgradeId: number) {
    let skillId = LoadInteger(udg_SkillLevelsTable, upgradeId, StringHash("Skill"))
    let swapBookTable = LoadHashtableHandle(udg_SkillLevelsTable, upgradeId, StringHash("SwapBookTable"))
    let p = GetOwningPlayer(hero)
    let upgradeLevel = GetPlayerTechCountSimple(upgradeId, p)

    SetPlayerAbilityAvailable(p, skillId, true)
    if(swapBookTable === null) {
        UnitAddAbility(hero, skillId)
        SetUnitAbilityLevel(hero, skillId, upgradeLevel)
    } else {
        SwapBookSetLevel(swapBookTable, hero, skillId, upgradeLevel)
        SwapBookAddIfMissing(hero, swapBookTable, skillId)
    }
}

function SkillTrainedActions() {
    let upgradeId = GetResearched()
    let p = GetOwningPlayer(GetTriggerUnit())
    let hero = udg_PlayerHeroes[GetPlayerId(p)]

    TrainSkill(hero, upgradeId)
}

let trainerUnits: {[key: number]: Unit} = {};

export function SetTrainerUnit(unitType: number, p: Player) {
    let u = CreateUnit(p, unitType, 10, 10, 0)
    let trainedTrigger = CreateTrigger()
    //SaveUnitHandle(udg_SkillLevelsTable, GetHandleId(p), StringHash("TrainerUnit"), u)
    trainerUnits[GetPlayerId(p)] = u;
    TriggerRegisterUnitEvent(trainedTrigger, u, EVENT_UNIT_RESEARCH_FINISH)
    TriggerAddAction(trainedTrigger, SkillTrainedActions)
}

function SelectSkillsAction() {
    let p = GetOwningPlayer(GetBuyingUnit())
    //let trainer = LoadUnitHandle(udg_SkillLevelsTable, GetHandleId(p), StringHash("TrainerUnit"))
    let trainer = trainerUnits[GetPlayerId(p)];
    SetUnitX(trainer, GetUnitX(GetSellingUnit()))
    SetUnitY(trainer, GetUnitY(GetSellingUnit()))
    SetUnitOwner(trainer, p, true)
    SelectUnitForPlayerSingle(trainer, p)
}

function InitDeselectionPlayer() {
    let picked = GetEnumPlayer()
    let selectionTrigger = CreateTrigger()
    TriggerRegisterPlayerSelectionEventBJ(selectionTrigger, picked, false)
    TriggerAddCondition(selectionTrigger, Condition(() => GetUnitAbilityLevel(GetTriggerUnit(), FourCC('A030')) === 1))
    TriggerAddAction(selectionTrigger, () => SetUnitOwner(GetTriggerUnit(), Player(PLAYER_NEUTRAL_PASSIVE), true))
}

export function InitSkillLevels() {
    let selectSkillsTrigger = CreateTrigger()
    udg_SkillLevelsTable = InitHashtable()
    TriggerRegisterUnitEvent(selectSkillsTrigger, gg_unit_n001_0002, EVENT_UNIT_SELL_ITEM)
    TriggerAddAction(selectSkillsTrigger, SelectSkillsAction)

    ForForce(GetPlayersAll(), InitDeselectionPlayer)
}