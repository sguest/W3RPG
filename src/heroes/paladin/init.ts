import { InitSealOfRighteousness } from "./sealOfRighteousness"
import { InitSealOfJustice } from "./sealOfJustice"
import { InitSealSelection } from "./sealSelection"
import { InitAuraSelection } from "./auraSelection"
import { InitHolyLight } from "./holyLight"
import { InitJudgment } from "./judgment"
import { InitLevelStats } from "../levelStats"
import { SetSkillUpgrade, SetSwapBookUpgrade, TrainSkill, SetTrainerUnit } from "../skillLevels"
import { InitSwapBookTable, InitSwapBook } from "src/swapBook/init"

function InitSealTable() {
    udg_SealBooks = InitHashtable()
    InitSwapBookTable(udg_SealBooks)
    //Seal of Righteousness
    InitSwapBook(udg_SealBooks, FourCC('A003'), FourCC('A002'), FourCC('A008'), 0)
    //Seal of Vengeance
    InitSwapBook(udg_SealBooks, FourCC('A005'), FourCC('A004'), FourCC('A007'), FourCC('A006'))
    //Seal of Light
    InitSwapBook(udg_SealBooks, FourCC('A00A'), FourCC('A00B'), FourCC('A00C'), FourCC('A009'))
    //Seal of Justice
    InitSwapBook(udg_SealBooks, FourCC('A00D'), FourCC('A00E'), FourCC('A00F'), 0)
}

function InitAuraTable() {
    udg_AuraBooks = InitHashtable()
    InitSwapBookTable(udg_AuraBooks)
    //Devotion Aura
    InitSwapBook(udg_AuraBooks, FourCC('A00J'), FourCC('A00I'), FourCC('A00K'), FourCC('A00L'))
    //Retribution Aura
    InitSwapBook(udg_AuraBooks, FourCC('A00O'), FourCC('A00P'), FourCC('A00N'), FourCC('A00M'))
    //Sanctity Aura
    InitSwapBook(udg_AuraBooks, FourCC('A00S'), FourCC('A00T'), FourCC('A00R'), FourCC('A00Q'))
    //Aura of Mercy
    InitSwapBook(udg_AuraBooks, FourCC('A00W'), FourCC('A00X'), FourCC('A00V'), FourCC('A00U'))
}

function InitPaladinSkillLevels() {
    //Seal of light
    SetSkillUpgrade(FourCC('R001'), FourCC('A00A'))
    SetSwapBookUpgrade(FourCC('R001'), udg_SealBooks)
    //Devotion Aura
    SetSkillUpgrade(FourCC('R002'), FourCC('A00J'))
    SetSwapBookUpgrade(FourCC('R002'), udg_AuraBooks)
    //Holy Light
    SetSkillUpgrade(FourCC('R003'), FourCC('A000'))
    //Seal of Rightousness
    SetSkillUpgrade(FourCC('R004'), FourCC('A003'))
    SetSwapBookUpgrade(FourCC('R004'), udg_SealBooks)
    //Judgment
    SetSkillUpgrade(FourCC('R005'), FourCC('A00H'))
}

function DisablePaladinSkills(hero: Unit) {
    let p = GetOwningPlayer(hero)

    //Seal of Vengeance
    SetPlayerAbilityAvailable(p, FourCC('A007'), false)
    SetPlayerAbilityAvailable(p, FourCC('A005'), false)
    //Seal of Light
    SetPlayerAbilityAvailable(p, FourCC('A00C'), false)
    SetPlayerAbilityAvailable(p, FourCC('A00A'), false)
    //Seal of Justice
    SetPlayerAbilityAvailable(p, FourCC('A00D'), false)
    //Devotion Aura
    SetPlayerAbilityAvailable(p, FourCC('A00K'), false)
    SetPlayerAbilityAvailable(p, FourCC('A00J'), false)
    //Retribution Aura
    SetPlayerAbilityAvailable(p, FourCC('A00N'), false)
    SetPlayerAbilityAvailable(p, FourCC('A00O'), false)
    //Sanctity Aura
    SetPlayerAbilityAvailable(p, FourCC('A00R'), false)
    SetPlayerAbilityAvailable(p, FourCC('A00S'), false)
    //Aura of Mercy
    SetPlayerAbilityAvailable(p, FourCC('A00V'), false)
    SetPlayerAbilityAvailable(p, FourCC('A00W'), false)
    //Divine Shield
    SetPlayerAbilityAvailable(p, FourCC('A001'), false)
    //Holy Light
    SetPlayerAbilityAvailable(p, FourCC('A000'), false)
}

function PaladinLearnInitialSkills(hero: Unit) {
    //Seal of Righteousness
    SetPlayerTechResearched(GetOwningPlayer(hero), FourCC('R004'), 1)
    TrainSkill(hero, FourCC('R004'))
    //Judgment
    SetPlayerTechResearched(GetOwningPlayer(hero), FourCC('R005'), 1)
    TrainSkill(hero, FourCC('R005'))
}

export function InitPaladin(hero: Unit) {
    if(udg_SealBooks == null) {
        InitSealTable()
        InitAuraTable()
        InitSealOfRighteousness()
        InitSealOfJustice()
        InitLevelStats(FourCC('Hpal'), 67.5, 0.135, 3, 0.45, 27, 9)
        InitPaladinSkillLevels()
    }

    DisablePaladinSkills(hero)
    PaladinLearnInitialSkills(hero)
    SetTrainerUnit(FourCC('n002'), GetOwningPlayer(hero))
    InitSealSelection(hero)
    InitAuraSelection(hero)
    InitHolyLight(hero)
    InitJudgment(hero)
}