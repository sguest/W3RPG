udg_SealBooks = nil
udg_AuraBooks = nil
udg_StatModTable = nil
udg_ChannelCasters = nil
udg_ShieldTable = nil
udg_ElapsedSeconds = 0
udg_AbilityToggleTable = nil
udg_HeroLevelStats = nil
udg_ShopsTable = nil
udg_SkillLevelsTable = nil
udg_PlayerHeroes = {}
gg_rct_HeroSelection = nil
gg_rct_HeroSpawn = nil
gg_trg_Game_Timer = nil
gg_trg_Global_Unit_References = nil
gg_trg_Melee_Initialization = nil
gg_unit_eate_0217 = nil
gg_unit_uaod_0216 = nil
gg_unit_oalt_0001 = nil
gg_unit_halt_0213 = nil
gg_unit_n001_0002 = nil
function InitGlobals()
    local i = 0
    udg_ElapsedSeconds = 0
end

function CreateBuildingsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hgtw"), -14336.0, -14336.0, 270.000, FourCC("hgtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hgtw"), -14208.0, -14336.0, 270.000, FourCC("hgtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hgtw"), -14080.0, -14336.0, 270.000, FourCC("hgtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hgtw"), -13952.0, -14336.0, 270.000, FourCC("hgtw"))
    u = BlzCreateUnitWithSkin(p, FourCC("hgtw"), -13824.0, -14336.0, 270.000, FourCC("hgtw"))
end

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13264.9, -15220.0, 19.348, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13476.8, -15480.0, 332.544, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13455.6, -15563.5, 114.942, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13265.0, -15460.8, 324.271, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13082.8, -15172.8, 179.940, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13130.3, -15078.2, 92.662, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13272.2, -15159.3, 93.694, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13338.1, -15499.0, 330.204, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13215.8, -15649.8, 206.538, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13212.6, -15540.8, 277.150, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13283.1, -15289.5, 151.451, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13172.6, -15368.1, 194.772, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13246.6, -15502.1, 276.271, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13328.4, -15354.4, 221.579, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13040.1, -15385.0, 332.083, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13184.1, -15581.5, 40.728, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13378.9, -15459.2, 137.114, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13396.5, -15216.3, 188.366, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13159.6, -15191.8, 76.467, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13030.2, -15472.0, 224.238, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13101.6, -15540.8, 218.217, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13203.6, -15285.9, 136.213, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13174.2, -15157.4, 351.518, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13160.9, -15316.1, 61.130, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13378.4, -15571.0, 120.007, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13335.5, -15587.4, 202.341, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13208.5, -15505.2, 123.556, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13102.7, -15294.8, 329.490, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13316.5, -15203.2, 101.473, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13375.7, -15371.5, 349.651, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -13279.7, -15527.0, 110.482, FourCC("hpea"))
end

function CreateNeutralPassiveBuildings()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("n000"), -14400.0, -14848.0, 270.000, FourCC("n000"))
    gg_unit_oalt_0001 = BlzCreateUnitWithSkin(p, FourCC("oalt"), -15072.0, -15328.0, 270.000, FourCC("oalt"))
    gg_unit_n001_0002 = BlzCreateUnitWithSkin(p, FourCC("n001"), -13952.0, -14976.0, 270.000, FourCC("n001"))
    gg_unit_halt_0213 = BlzCreateUnitWithSkin(p, FourCC("halt"), -15456.0, -15328.0, 270.000, FourCC("halt"))
    gg_unit_uaod_0216 = BlzCreateUnitWithSkin(p, FourCC("uaod"), -15456.0, -15712.0, 270.000, FourCC("uaod"))
    gg_unit_eate_0217 = BlzCreateUnitWithSkin(p, FourCC("eate"), -15072.0, -15712.0, 270.000, FourCC("eate"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer1()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer1()
end

function CreateAllUnits()
    CreateNeutralPassiveBuildings()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_HeroSelection = Rect(-15296.0, -15584.0, -15200.0, -15488.0)
    gg_rct_HeroSpawn = Rect(-14304.0, -15424.0, -14208.0, -15328.0)
end

--Start custom code

local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file)
    if ____moduleCache[file] then
        return ____moduleCache[file]
    end
    if ____modules[file] then
        ____moduleCache[file] = ____modules[file]()
        return ____moduleCache[file]
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["statMod.init"] = function() local ____exports = {}
function ____exports.InitStatMod()
    local attackHash = StringHash("attack")
    local healthHash = StringHash("health")
    local armorHash = StringHash("armor")
    local healthRegenHash = StringHash("healthRegen")
    local attackSpeedHash = StringHash("attackSpeed")
    local manaHash = StringHash("mana")
    local manaRegenHash = StringHash("manaRegen")
    local maxValueHash = StringHash("MaxValue")
    udg_StatModTable = InitHashtable()
    SaveInteger(udg_StatModTable, maxValueHash, attackHash, 256)
    SaveInteger(
        udg_StatModTable,
        attackHash,
        1,
        FourCC("A00Z")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        2,
        FourCC("A010")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        4,
        FourCC("A011")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        8,
        FourCC("A012")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        16,
        FourCC("A013")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        32,
        FourCC("A014")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        64,
        FourCC("A015")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        128,
        FourCC("A016")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        256,
        FourCC("A017")
    )
    SaveInteger(
        udg_StatModTable,
        attackHash,
        -512,
        FourCC("A018")
    )
    SaveInteger(udg_StatModTable, maxValueHash, healthHash, 4096)
    SaveInteger(
        udg_StatModTable,
        healthHash,
        1,
        FourCC("A01C")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        2,
        FourCC("A01B")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        4,
        FourCC("A01O")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        8,
        FourCC("A01D")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        16,
        FourCC("A01E")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        32,
        FourCC("A01F")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        64,
        FourCC("A01G")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        128,
        FourCC("A01H")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        256,
        FourCC("A01I")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        512,
        FourCC("A01J")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        1024,
        FourCC("A01K")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        2048,
        FourCC("A01L")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        4096,
        FourCC("A01M")
    )
    SaveInteger(
        udg_StatModTable,
        healthHash,
        -8192,
        FourCC("A01N")
    )
    SaveInteger(udg_StatModTable, maxValueHash, armorHash, 128)
    SaveInteger(
        udg_StatModTable,
        armorHash,
        1,
        FourCC("A01X")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        2,
        FourCC("A01Q")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        4,
        FourCC("A01R")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        8,
        FourCC("A01S")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        16,
        FourCC("A01T")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        32,
        FourCC("A01U")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        64,
        FourCC("A01V")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        128,
        FourCC("A01W")
    )
    SaveInteger(
        udg_StatModTable,
        armorHash,
        -256,
        FourCC("A01P")
    )
    SaveInteger(udg_StatModTable, maxValueHash, healthRegenHash, 64)
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        1,
        FourCC("A025")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        2,
        FourCC("A01Y")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        4,
        FourCC("A01Z")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        8,
        FourCC("A020")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        16,
        FourCC("A021")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        32,
        FourCC("A022")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        64,
        FourCC("A023")
    )
    SaveInteger(
        udg_StatModTable,
        healthRegenHash,
        -128,
        FourCC("A024")
    )
    SaveInteger(udg_StatModTable, maxValueHash, attackSpeedHash, 128)
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        1,
        FourCC("A02A")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        2,
        FourCC("A02C")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        4,
        FourCC("A027")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        8,
        FourCC("A028")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        16,
        FourCC("A02B")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        32,
        FourCC("A026")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        64,
        FourCC("A02D")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        128,
        FourCC("A01A")
    )
    SaveInteger(
        udg_StatModTable,
        attackSpeedHash,
        -256,
        FourCC("AF029")
    )
    SaveInteger(udg_StatModTable, maxValueHash, manaHash, 4096)
    SaveInteger(
        udg_StatModTable,
        manaHash,
        1,
        FourCC("A03C")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        2,
        FourCC("A03B")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        4,
        FourCC("A03A")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        8,
        FourCC("A039")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        16,
        FourCC("A038")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        32,
        FourCC("A037")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        64,
        FourCC("A036")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        128,
        FourCC("A035")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        256,
        FourCC("A034")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        512,
        FourCC("A033")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        1024,
        FourCC("A032")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        2048,
        FourCC("A02X")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        4096,
        FourCC("A02Y")
    )
    SaveInteger(
        udg_StatModTable,
        manaHash,
        -8192,
        FourCC("A02Z")
    )
    SaveInteger(udg_StatModTable, maxValueHash, manaRegenHash, 256)
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        1,
        FourCC("A02W")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        2,
        FourCC("A02N")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        4,
        FourCC("A02O")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        8,
        FourCC("A02P")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        16,
        FourCC("A02Q")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        32,
        FourCC("A02R")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        64,
        FourCC("A02S")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        128,
        FourCC("A01T")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        256,
        FourCC("A02U")
    )
    SaveInteger(
        udg_StatModTable,
        manaRegenHash,
        -512,
        FourCC("A02V")
    )
end
return ____exports
end,
["statMod.main"] = function() local ____exports = {}
function ____exports.SetStatMod(target, statName, delta)
    local handleId = GetHandleId(target)
    local statHash = StringHash(statName)
    local maxValue = LoadInteger(
        udg_StatModTable,
        StringHash("MaxValue"),
        statHash
    )
    local minValue = maxValue * -2
    local index = 1
    local useNegativeMod = false
    local currentValue = LoadInteger(udg_StatModTable, handleId, statHash) + math.floor(delta)
    SaveInteger(udg_StatModTable, handleId, statHash, currentValue)
    UnitRemoveAbility(
        target,
        LoadInteger(udg_StatModTable, statHash, minValue)
    )
    if currentValue < 0 then
        currentValue = -minValue + currentValue
        useNegativeMod = true
    end
    while index <= maxValue do
        if (currentValue % 2) == 1 then
            UnitAddAbility(
                target,
                LoadInteger(udg_StatModTable, statHash, index)
            )
        else
            UnitRemoveAbility(
                target,
                LoadInteger(udg_StatModTable, statHash, index)
            )
        end
        currentValue = math.floor(currentValue / 2)
        index = index * 2
    end
    if useNegativeMod then
        UnitAddAbility(
            target,
            LoadInteger(udg_StatModTable, statHash, minValue)
        )
    end
    return currentValue
end
function ____exports.SetAttackMod(target, delta)
    return ____exports.SetStatMod(target, "attack", delta)
end
function ____exports.SetHealthMod(target, delta)
    return ____exports.SetStatMod(target, "health", delta)
end
function ____exports.SetArmorMod(target, delta)
    return ____exports.SetStatMod(target, "armor", delta)
end
function ____exports.SetHealthRegenMod(target, delta)
    return ____exports.SetStatMod(target, "healthRegen", delta)
end
function ____exports.SetAttackSpeedMod(target, delta)
    return ____exports.SetStatMod(target, "attackSpeed", delta)
end
function ____exports.SetManaMod(target, delta)
    return ____exports.SetStatMod(target, "mana", delta)
end
function ____exports.SetManaRegenMod(target, delta)
    return ____exports.SetStatMod(target, "manaRegen", delta)
end
return ____exports
end,
["heroes.levelStats"] = function() local ____exports = {}
local ____main = require("statMod.main")
local SetStatMod = ____main.SetStatMod
function ____exports.InitLevelStats(unitType, health, healthRegen, attackSpeed, armor, mana, manaRegen)
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("health"),
        health
    )
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("healthRegen"),
        healthRegen
    )
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("attackSpeed"),
        attackSpeed
    )
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("armor"),
        armor
    )
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("mana"),
        mana
    )
    SaveReal(
        udg_HeroLevelStats,
        unitType,
        StringHash("manaRegen"),
        manaRegen
    )
end
local function ApplyLevelStat(hero, statName)
    local level = GetHeroLevel(hero)
    local unitType = GetUnitTypeId(hero)
    local unitHandle = GetHandleId(hero)
    local nameHash = StringHash(statName)
    local currentValue = LoadInteger(udg_HeroLevelStats, unitHandle, nameHash)
    local levelValue = LoadReal(udg_HeroLevelStats, unitType, nameHash)
    local targetValue = math.floor((level - 1) * levelValue)
    local delta = targetValue - currentValue
    SetStatMod(hero, statName, delta)
    SaveInteger(udg_HeroLevelStats, unitHandle, nameHash, targetValue)
end
function ____exports.ApplyLevelStats(hero)
    ApplyLevelStat(hero, "health")
    ApplyLevelStat(hero, "healthRegen")
    ApplyLevelStat(hero, "attackSpeed")
    ApplyLevelStat(hero, "armor")
    ApplyLevelStat(hero, "mana")
    ApplyLevelStat(hero, "manaRegen")
end
return ____exports
end,
["heroes.paladin.sealOfRighteousness"] = function() local ____exports = {}
local function SealOfRighteousnessActions()
    local caster = GetAttacker()
    local target = GetAttackedUnitBJ()
    local casterStrength = GetHeroStr(caster, true)
    local level = GetUnitAbilityLevel(
        caster,
        FourCC("A008")
    )
    UnitDamageTargetBJ(caster, target, (casterStrength * 0.5) * level, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
end
function ____exports.InitSealOfRighteousness()
    local sealOfRighteousnessTrigger = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(sealOfRighteousnessTrigger, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(
        sealOfRighteousnessTrigger,
        Condition(
            function() return GetUnitAbilityLevel(
                GetAttacker(),
                FourCC("A008")
            ) >= 1 end
        )
    )
    TriggerAddAction(sealOfRighteousnessTrigger, SealOfRighteousnessActions)
end
return ____exports
end,
["util.stun"] = function() local ____exports = {}
function ____exports.UnitStunTarget(caster, target, duration)
    local stunner = CreateUnit(
        GetOwningPlayer(caster),
        FourCC("h000"),
        GetUnitX(target),
        GetUnitY(target),
        0
    )
    UnitAddAbility(
        stunner,
        FourCC("A00G")
    )
    SetUnitAbilityLevel(
        stunner,
        FourCC("A00G"),
        duration
    )
    IssueTargetOrder(stunner, "thunderbolt", target)
    PolledWait(2)
    RemoveUnit(stunner)
end
return ____exports
end,
["heroes.paladin.sealOfJustice"] = function() local ____exports = {}
local ____stun = require("util.stun")
local UnitStunTarget = ____stun.UnitStunTarget
local function SealOfJusticeActions()
    local caster = GetAttacker()
    local target = GetAttackedUnitBJ()
    local casterStrength = GetHeroStr(caster, true)
    if GetRandomInt(1, 100) <= 25 then
        UnitDamageTargetBJ(caster, target, casterStrength * 2, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        UnitStunTarget(caster, target, 2)
    end
end
function ____exports.InitSealOfJustice()
    local sealOfJusticeTrigger = CreateTrigger()
    TriggerRegisterAnyUnitEventBJ(sealOfJusticeTrigger, EVENT_PLAYER_UNIT_ATTACKED)
    TriggerAddCondition(
        sealOfJusticeTrigger,
        Condition(
            function() return GetUnitAbilityLevel(
                GetAttacker(),
                FourCC("A00F")
            ) == 1 end
        )
    )
    TriggerAddAction(sealOfJusticeTrigger, SealOfJusticeActions)
end
return ____exports
end,
["swapBook.triggers"] = function() local ____exports = {}
function ____exports.SwapBookConditions(____table)
    local abilityId = GetSpellAbilityId()
    local numItems = LoadInteger(
        ____table,
        StringHash("NumItems"),
        0
    )
    do
        local counter = 0
        while counter < numItems do
            if LoadInteger(
                ____table,
                StringHash("Parent"),
                counter
            ) == abilityId then
                return true
            end
            counter = counter + 1
        end
    end
    return false
end
local function SwapBookApplyLevel(hero, ____table, selector)
    local heroHandle = GetHandleId(hero)
    local selectorBookHash = StringHash("SelectorBook")
    local addedHash = StringHash("AddedAbility")
    local effectHash = StringHash("EffectAbility")
    local level = LoadInteger(____table, heroHandle, selector)
    SetUnitAbilityLevel(
        hero,
        LoadInteger(____table, selector, selectorBookHash),
        level
    )
    SetUnitAbilityLevel(hero, selector, level)
    SetUnitAbilityLevel(
        hero,
        LoadInteger(____table, selector, addedHash),
        level
    )
    SetUnitAbilityLevel(
        hero,
        LoadInteger(____table, selector, effectHash),
        level
    )
end
function ____exports.SwapBookAddIfMissing(hero, ____table, targetSelector)
    local counter = 0
    local numItems = LoadInteger(
        ____table,
        StringHash("NumItems"),
        0
    )
    local selector
    local parentHash = StringHash("Parent")
    local selectorBookHash = StringHash("SelectorBook")
    local addedHash = StringHash("AddedAbility")
    local found = false
    while (counter < numItems) and (not found) do
        selector = LoadInteger(____table, parentHash, counter)
        if GetUnitAbilityLevel(
            hero,
            LoadInteger(____table, selector, selectorBookHash)
        ) >= 1 then
            found = true
        end
        counter = counter + 1
    end
    if not found then
        UnitAddAbility(
            hero,
            LoadInteger(____table, targetSelector, selectorBookHash)
        )
        UnitAddAbility(
            hero,
            LoadInteger(____table, targetSelector, addedHash)
        )
        SwapBookApplyLevel(hero, ____table, targetSelector)
    end
end
function ____exports.SwapBookActions(____table)
    local caster = GetSpellAbilityUnit()
    local abilityId = GetSpellAbilityId()
    local numItems = LoadInteger(
        ____table,
        StringHash("NumItems"),
        0
    )
    local parentHash = StringHash("Parent")
    local selectorBookHash = StringHash("SelectorBook")
    local addedHash = StringHash("AddedAbility")
    do
        local counter = 0
        while counter < numItems do
            local selector = LoadInteger(____table, parentHash, counter)
            if selector == abilityId then
                UnitAddAbility(
                    caster,
                    LoadInteger(____table, selector, selectorBookHash)
                )
                UnitAddAbility(
                    caster,
                    LoadInteger(____table, selector, addedHash)
                )
            else
                UnitRemoveAbility(
                    caster,
                    LoadInteger(____table, selector, selectorBookHash)
                )
                UnitRemoveAbility(
                    caster,
                    LoadInteger(____table, selector, addedHash)
                )
            end
            counter = counter + 1
        end
    end
    do
        local counter = 0
        while counter < numItems do
            local selector = LoadInteger(____table, parentHash, counter)
            SwapBookApplyLevel(caster, ____table, selector)
            counter = counter + 1
        end
    end
end
function ____exports.SwapBookSetLevel(____table, hero, abilityCode, level)
    SaveInteger(
        ____table,
        GetHandleId(hero),
        abilityCode,
        level
    )
    SwapBookApplyLevel(hero, ____table, abilityCode)
end
return ____exports
end,
["heroes.paladin.sealSelection"] = function() local ____exports = {}
local ____triggers = require("swapBook.triggers")
local SwapBookConditions = ____triggers.SwapBookConditions
local SwapBookActions = ____triggers.SwapBookActions
function ____exports.InitSealSelection(hero)
    local sealSelectionTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(sealSelectionTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        sealSelectionTrigger,
        Condition(
            function() return SwapBookConditions(udg_SealBooks) end
        )
    )
    TriggerAddAction(
        sealSelectionTrigger,
        function() return SwapBookActions(udg_SealBooks) end
    )
end
return ____exports
end,
["heroes.paladin.auraSelection"] = function() local ____exports = {}
local ____triggers = require("swapBook.triggers")
local SwapBookActions = ____triggers.SwapBookActions
local SwapBookConditions = ____triggers.SwapBookConditions
function ____exports.InitAuraSelection(hero)
    local auraSelectionTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(auraSelectionTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        auraSelectionTrigger,
        Condition(
            function() return SwapBookConditions(udg_AuraBooks) end
        )
    )
    TriggerAddAction(
        auraSelectionTrigger,
        function() return SwapBookActions(udg_AuraBooks) end
    )
end
return ____exports
end,
["util.heal"] = function() local ____exports = {}
function ____exports.HealUnit(target, amount)
    SetUnitLifeBJ(
        target,
        GetUnitState(target, UNIT_STATE_LIFE) + amount
    )
end
return ____exports
end,
["heroes.paladin.holyLight"] = function() local ____exports = {}
local ____heal = require("util.heal")
local HealUnit = ____heal.HealUnit
local function HolyLightActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local targetLocation = GetUnitLoc(target)
    local aoeTargets = GetUnitsInRangeOfLocAll(300, targetLocation)
    local level = GetUnitAbilityLevel(
        caster,
        FourCC("A000")
    )
    local casterStrength = GetHeroStr(caster, true)
    if IsPlayerEnemy(
        GetOwningPlayer(caster),
        GetOwningPlayer(target)
    ) then
        local damageAmount = casterStrength * (level + 3)
        local healAmount = casterStrength * ((level * 0.5) + 2.5)
        UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        local picked = FirstOfGroup(aoeTargets)
        while picked ~= nil do
            GroupRemoveUnit(aoeTargets, picked)
            if IsPlayerAlly(
                GetOwningPlayer(picked),
                GetOwningPlayer(caster)
            ) then
                HealUnit(picked, healAmount)
            end
            picked = FirstOfGroup(aoeTargets)
        end
    else
        local damageAmount = casterStrength * ((level * 0.5) + 3.5)
        local healAmount = casterStrength * (level + 5)
        HealUnit(target, healAmount)
        local picked = FirstOfGroup(aoeTargets)
        while picked ~= nil do
            GroupRemoveUnit(aoeTargets, picked)
            if IsPlayerEnemy(
                GetOwningPlayer(picked),
                GetOwningPlayer(caster)
            ) and (not IsUnitDeadBJ(picked)) then
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            end
            picked = FirstOfGroup(aoeTargets)
        end
    end
    DestroyGroup(aoeTargets)
    RemoveLocation(targetLocation)
end
function ____exports.InitHolyLight(hero)
    local holyLightTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(holyLightTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        holyLightTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A000") end
        )
    )
    TriggerAddAction(holyLightTrigger, HolyLightActions)
end
return ____exports
end,
["heroes.paladin.judgment"] = function() local ____exports = {}
local ____stun = require("util.stun")
local UnitStunTarget = ____stun.UnitStunTarget
local ____heal = require("util.heal")
local HealUnit = ____heal.HealUnit
local function JudgmentActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local casterLocation = GetUnitLoc(caster)
    local targetLocation = GetUnitLoc(target)
    local distance = DistanceBetweenPoints(casterLocation, targetLocation)
    local casterStrength = GetHeroStr(caster, true)
    local visualEffect
    PolledWait(distance / 1000)
    UnitDamageTargetBJ(
        caster,
        target,
        casterStrength * (GetUnitAbilityLevel(
            caster,
            FourCC("A00H")
        ) + 1),
        ATTACK_TYPE_NORMAL,
        DAMAGE_TYPE_NORMAL
    )
    if GetUnitAbilityLevel(
        caster,
        FourCC("A008")
    ) > 0 then
        local sealLevel = GetUnitAbilityLevel(
            caster,
            FourCC("A009")
        )
        UnitDamageTargetBJ(caster, target, casterStrength * (2 + sealLevel), ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
    elseif GetUnitAbilityLevel(
        caster,
        FourCC("A006")
    ) > 0 then
        local aoeTargets = GetUnitsInRangeOfLocAll(300, targetLocation)
        local picked = FirstOfGroup(aoeTargets)
        while picked ~= nil do
            GroupRemoveUnit(aoeTargets, picked)
            if ((picked ~= target) and IsPlayerEnemy(
                GetOwningPlayer(caster),
                GetOwningPlayer(picked)
            )) and (not IsUnitDeadBJ(picked)) then
                UnitDamageTargetBJ(caster, picked, casterStrength * 1.5, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            end
        end
        visualEffect = AddSpecialEffectTarget("Abilities\\Spells\\Undead\\ReplenishHealth\\ReplenishHealthCaster.mdl", target, "overhead")
        DestroyGroup(aoeTargets)
    elseif GetUnitAbilityLevel(
        caster,
        FourCC("A009")
    ) > 0 then
        local sealLevel = GetUnitAbilityLevel(
            caster,
            FourCC("A009")
        )
        HealUnit(caster, casterStrength * (1 + sealLevel))
        visualEffect = AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl", caster, "origin")
    elseif GetUnitAbilityLevel(
        caster,
        FourCC("A00F")
    ) > 0 then
        UnitStunTarget(caster, target, 4)
    end
    PolledWait(1)
    DestroyEffect(visualEffect)
    RemoveLocation(casterLocation)
    RemoveLocation(targetLocation)
end
function ____exports.InitJudgment(hero)
    local judgmentTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(judgmentTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        judgmentTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A00H") end
        )
    )
    TriggerAddAction(judgmentTrigger, JudgmentActions)
end
return ____exports
end,
["heroes.skillLevels"] = function() local ____exports = {}
local ____triggers = require("swapBook.triggers")
local SwapBookSetLevel = ____triggers.SwapBookSetLevel
local SwapBookAddIfMissing = ____triggers.SwapBookAddIfMissing
function ____exports.SetSkillUpgrade(upgradeId, skillId)
    SaveInteger(
        udg_SkillLevelsTable,
        upgradeId,
        StringHash("Skill"),
        skillId
    )
end
function ____exports.SetSwapBookUpgrade(upgradeId, ____table)
    SaveHashtableHandle(
        udg_SkillLevelsTable,
        upgradeId,
        StringHash("SwapBookTable"),
        ____table
    )
end
function ____exports.TrainSkill(hero, upgradeId)
    local skillId = LoadInteger(
        udg_SkillLevelsTable,
        upgradeId,
        StringHash("Skill")
    )
    local swapBookTable = LoadHashtableHandle(
        udg_SkillLevelsTable,
        upgradeId,
        StringHash("SwapBookTable")
    )
    local p = GetOwningPlayer(hero)
    local upgradeLevel = GetPlayerTechCountSimple(upgradeId, p)
    SetPlayerAbilityAvailable(p, skillId, true)
    if swapBookTable == nil then
        UnitAddAbility(hero, skillId)
        SetUnitAbilityLevel(hero, skillId, upgradeLevel)
    else
        SwapBookSetLevel(swapBookTable, hero, skillId, upgradeLevel)
        SwapBookAddIfMissing(hero, swapBookTable, skillId)
    end
end
local function SkillTrainedActions()
    local upgradeId = GetResearched()
    local p = GetOwningPlayer(
        GetTriggerUnit()
    )
    local hero = udg_PlayerHeroes[GetPlayerId(p) + 1]
    ____exports.TrainSkill(hero, upgradeId)
end
local trainerUnits = {}
function ____exports.SetTrainerUnit(unitType, p)
    local u = CreateUnit(p, unitType, 10, 10, 0)
    local trainedTrigger = CreateTrigger()
    trainerUnits[GetPlayerId(p)] = u
    TriggerRegisterUnitEvent(trainedTrigger, u, EVENT_UNIT_RESEARCH_FINISH)
    TriggerAddAction(trainedTrigger, SkillTrainedActions)
end
local function SelectSkillsAction()
    local p = GetOwningPlayer(
        GetBuyingUnit()
    )
    local trainer = trainerUnits[GetPlayerId(p)]
    SetUnitX(
        trainer,
        GetUnitX(
            GetSellingUnit()
        )
    )
    SetUnitY(
        trainer,
        GetUnitY(
            GetSellingUnit()
        )
    )
    SetUnitOwner(trainer, p, true)
    SelectUnitForPlayerSingle(trainer, p)
end
local function InitDeselectionPlayer()
    local picked = GetEnumPlayer()
    local selectionTrigger = CreateTrigger()
    TriggerRegisterPlayerSelectionEventBJ(selectionTrigger, picked, false)
    TriggerAddCondition(
        selectionTrigger,
        Condition(
            function() return GetUnitAbilityLevel(
                GetTriggerUnit(),
                FourCC("A030")
            ) == 1 end
        )
    )
    TriggerAddAction(
        selectionTrigger,
        function() return SetUnitOwner(
            GetTriggerUnit(),
            Player(PLAYER_NEUTRAL_PASSIVE),
            true
        ) end
    )
end
function ____exports.InitSkillLevels()
    local selectSkillsTrigger = CreateTrigger()
    udg_SkillLevelsTable = InitHashtable()
    TriggerRegisterUnitEvent(selectSkillsTrigger, gg_unit_n001_0002, EVENT_UNIT_SELL_ITEM)
    TriggerAddAction(selectSkillsTrigger, SelectSkillsAction)
    ForForce(
        GetPlayersAll(),
        InitDeselectionPlayer
    )
end
return ____exports
end,
["swapBook.init"] = function() local ____exports = {}
function ____exports.InitSwapBookTable(____table)
    SaveInteger(
        ____table,
        StringHash("NumItems"),
        0,
        0
    )
end
function ____exports.InitSwapBook(____table, selector, selectorBook, addedAbility, effectAbility)
    local count = LoadInteger(
        ____table,
        StringHash("NumItems"),
        0
    )
    SaveInteger(
        ____table,
        StringHash("Parent"),
        count,
        selector
    )
    count = count + 1
    SaveInteger(
        ____table,
        StringHash("NumItems"),
        0,
        count
    )
    SaveInteger(
        ____table,
        selector,
        StringHash("SelectorBook"),
        selectorBook
    )
    SaveInteger(
        ____table,
        selector,
        StringHash("AddedAbility"),
        addedAbility
    )
    SaveInteger(
        ____table,
        selector,
        StringHash("EffectAbility"),
        effectAbility
    )
end
return ____exports
end,
["heroes.paladin.init"] = function() local ____exports = {}
local ____sealOfRighteousness = require("heroes.paladin.sealOfRighteousness")
local InitSealOfRighteousness = ____sealOfRighteousness.InitSealOfRighteousness
local ____sealOfJustice = require("heroes.paladin.sealOfJustice")
local InitSealOfJustice = ____sealOfJustice.InitSealOfJustice
local ____sealSelection = require("heroes.paladin.sealSelection")
local InitSealSelection = ____sealSelection.InitSealSelection
local ____auraSelection = require("heroes.paladin.auraSelection")
local InitAuraSelection = ____auraSelection.InitAuraSelection
local ____holyLight = require("heroes.paladin.holyLight")
local InitHolyLight = ____holyLight.InitHolyLight
local ____judgment = require("heroes.paladin.judgment")
local InitJudgment = ____judgment.InitJudgment
local ____levelStats = require("heroes.levelStats")
local InitLevelStats = ____levelStats.InitLevelStats
local ____skillLevels = require("heroes.skillLevels")
local SetSkillUpgrade = ____skillLevels.SetSkillUpgrade
local SetSwapBookUpgrade = ____skillLevels.SetSwapBookUpgrade
local TrainSkill = ____skillLevels.TrainSkill
local SetTrainerUnit = ____skillLevels.SetTrainerUnit
local ____init = require("swapBook.init")
local InitSwapBookTable = ____init.InitSwapBookTable
local InitSwapBook = ____init.InitSwapBook
local function InitSealTable()
    udg_SealBooks = InitHashtable()
    InitSwapBookTable(udg_SealBooks)
    InitSwapBook(
        udg_SealBooks,
        FourCC("A003"),
        FourCC("A002"),
        FourCC("A008"),
        0
    )
    InitSwapBook(
        udg_SealBooks,
        FourCC("A005"),
        FourCC("A004"),
        FourCC("A007"),
        FourCC("A006")
    )
    InitSwapBook(
        udg_SealBooks,
        FourCC("A00A"),
        FourCC("A00B"),
        FourCC("A00C"),
        FourCC("A009")
    )
    InitSwapBook(
        udg_SealBooks,
        FourCC("A00D"),
        FourCC("A00E"),
        FourCC("A00F"),
        0
    )
end
local function InitAuraTable()
    udg_AuraBooks = InitHashtable()
    InitSwapBookTable(udg_AuraBooks)
    InitSwapBook(
        udg_AuraBooks,
        FourCC("A00J"),
        FourCC("A00I"),
        FourCC("A00K"),
        FourCC("A00L")
    )
    InitSwapBook(
        udg_AuraBooks,
        FourCC("A00O"),
        FourCC("A00P"),
        FourCC("A00N"),
        FourCC("A00M")
    )
    InitSwapBook(
        udg_AuraBooks,
        FourCC("A00S"),
        FourCC("A00T"),
        FourCC("A00R"),
        FourCC("A00Q")
    )
    InitSwapBook(
        udg_AuraBooks,
        FourCC("A00W"),
        FourCC("A00X"),
        FourCC("A00V"),
        FourCC("A00U")
    )
end
local function InitPaladinSkillLevels()
    SetSkillUpgrade(
        FourCC("R001"),
        FourCC("A00A")
    )
    SetSwapBookUpgrade(
        FourCC("R001"),
        udg_SealBooks
    )
    SetSkillUpgrade(
        FourCC("R002"),
        FourCC("A00J")
    )
    SetSwapBookUpgrade(
        FourCC("R002"),
        udg_AuraBooks
    )
    SetSkillUpgrade(
        FourCC("R003"),
        FourCC("A000")
    )
    SetSkillUpgrade(
        FourCC("R004"),
        FourCC("A003")
    )
    SetSwapBookUpgrade(
        FourCC("R004"),
        udg_SealBooks
    )
    SetSkillUpgrade(
        FourCC("R005"),
        FourCC("A00H")
    )
end
local function DisablePaladinSkills(hero)
    local p = GetOwningPlayer(hero)
    SetPlayerAbilityAvailable(
        p,
        FourCC("A007"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A005"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00C"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00A"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00D"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00K"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00J"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00N"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00O"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00R"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00S"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00V"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A00W"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A001"),
        false
    )
    SetPlayerAbilityAvailable(
        p,
        FourCC("A000"),
        false
    )
end
local function PaladinLearnInitialSkills(hero)
    SetPlayerTechResearched(
        GetOwningPlayer(hero),
        FourCC("R004"),
        1
    )
    TrainSkill(
        hero,
        FourCC("R004")
    )
    SetPlayerTechResearched(
        GetOwningPlayer(hero),
        FourCC("R005"),
        1
    )
    TrainSkill(
        hero,
        FourCC("R005")
    )
end
function ____exports.InitPaladin(hero)
    if udg_SealBooks == nil then
        InitSealTable()
        InitAuraTable()
        InitSealOfRighteousness()
        InitSealOfJustice()
        InitLevelStats(
            FourCC("Hpal"),
            67.5,
            0.135,
            3,
            0.45,
            27,
            9
        )
        InitPaladinSkillLevels()
    end
    DisablePaladinSkills(hero)
    PaladinLearnInitialSkills(hero)
    SetTrainerUnit(
        FourCC("n002"),
        GetOwningPlayer(hero)
    )
    InitSealSelection(hero)
    InitAuraSelection(hero)
    InitHolyLight(hero)
    InitJudgment(hero)
end
return ____exports
end,
["heroes.farSeer.chainLightning"] = function() local ____exports = {}
local function ChainLightningActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local casterIntellect = GetHeroInt(caster, true)
    local damageAmount = casterIntellect * 5
    local bouncesRemaining = 6
    local lastTarget = caster
    local lightnings = {}
    local effects = {}
    while bouncesRemaining > 0 do
        local startX = GetUnitX(lastTarget)
        local startY = GetUnitY(lastTarget)
        local targetX = GetUnitX(target)
        local targetY = GetUnitY(target)
        table.insert(
            lightnings,
            AddLightning("CLPB", true, startX, startY, targetX, targetY)
        )
        table.insert(
            lightnings,
            AddLightning("CLSB", true, startX, startY, targetX, targetY)
        )
        table.insert(
            effects,
            AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl", target, "origin")
        )
        UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        local targetLocation = GetUnitLoc(target)
        local targetGroup = GetUnitsInRangeOfLocAll(500, targetLocation)
        local found = false
        local picked = GroupPickRandomUnit(targetGroup)
        while (not found) and (picked ~= nil) do
            if IsPlayerEnemy(
                GetOwningPlayer(picked),
                GetOwningPlayer(caster)
            ) and (not IsUnitDeadBJ(picked)) then
                found = true
                bouncesRemaining = bouncesRemaining - 1
                damageAmount = damageAmount * 0.85
                lastTarget = target
                target = picked
            end
            picked = GroupPickRandomUnit(targetGroup)
        end
        if not found then
            bouncesRemaining = 0
        end
        DestroyGroup(targetGroup)
        RemoveLocation(targetLocation)
    end
    PolledWait(1)
    for ____, lightning in ipairs(lightnings) do
        DestroyLightning(lightning)
    end
    for ____, effect in ipairs(effects) do
        DestroyEffect(effect)
    end
end
function ____exports.InitChainLightning(hero)
    local chainLightningTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(chainLightningTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        chainLightningTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A00Y") end
        )
    )
    TriggerAddAction(chainLightningTrigger, ChainLightningActions)
end
return ____exports
end,
["heroes.farSeer.feralSpirit"] = function() local ____exports = {}
local ____main = require("statMod.main")
local SetAttackMod = ____main.SetAttackMod
local SetHealthMod = ____main.SetHealthMod
local SetArmorMod = ____main.SetArmorMod
local SetHealthRegenMod = ____main.SetHealthRegenMod
local SetAttackSpeedMod = ____main.SetAttackSpeedMod
local function FeralSpiritActions()
    local caster = GetSummoningUnit()
    local summoned = GetSummonedUnit()
    local casterStr = GetHeroStr(caster, true)
    local casterAgi = GetHeroAgi(caster, true)
    local casterInt = GetHeroInt(caster, true)
    SetAttackMod(summoned, casterInt * 0.8)
    SetHealthMod(summoned, casterStr * 20)
    SetArmorMod(summoned, casterAgi * 0.2)
    SetHealthRegenMod(summoned, casterStr * 0.02)
    SetAttackSpeedMod(summoned, casterAgi * 2)
end
function ____exports.InitFeralSpirit(hero)
    local feralSpiritTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(feralSpiritTrigger, hero, EVENT_UNIT_SUMMON)
    TriggerAddCondition(
        feralSpiritTrigger,
        Condition(
            function() return GetUnitTypeId(
                GetSummonedUnit()
            ) == FourCC("o000") end
        )
    )
    TriggerAddAction(feralSpiritTrigger, FeralSpiritActions)
end
return ____exports
end,
["heroes.farSeer.earthquake"] = function() local ____exports = {}
local function EarthquakeStartActions()
    local caster = GetSpellAbilityUnit()
    local handleId = GetHandleId(caster)
    local earthquakeHash = StringHash("Earthquake")
    local targetLocation = GetSpellTargetLoc()
    local currentIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId) + 1
    SaveInteger(udg_ChannelCasters, earthquakeHash, handleId, currentIndex)
    local loadIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    while loadIndex == currentIndex do
        local damageAmount = GetHeroInt(caster, true) * 2
        local targetGroup = GetUnitsInRangeOfLocAll(250, targetLocation)
        local picked = FirstOfGroup(targetGroup)
        while picked ~= nil do
            GroupRemoveUnit(targetGroup, picked)
            if IsPlayerEnemy(
                GetOwningPlayer(picked),
                GetOwningPlayer(caster)
            ) and (not IsUnitDeadBJ(picked)) then
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            end
            picked = FirstOfGroup(targetGroup)
        end
        DestroyGroup(targetGroup)
        PolledWait(1)
        loadIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    end
    RemoveLocation(targetLocation)
end
local function EarthquakeEndActions()
    local caster = GetSpellAbilityUnit()
    local handleId = GetHandleId(caster)
    local earthquakeHash = StringHash("Earthquake")
    local currentIndex = 0
    if HaveSavedInteger(udg_ChannelCasters, earthquakeHash, handleId) then
        currentIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    end
    SaveInteger(udg_ChannelCasters, earthquakeHash, handleId, currentIndex + 1)
end
function ____exports.InitEarthquake(hero)
    local earthquakeStartTrigger = CreateTrigger()
    local earthquakeEndTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(earthquakeStartTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerRegisterUnitEvent(earthquakeEndTrigger, hero, EVENT_UNIT_SPELL_ENDCAST)
    TriggerAddCondition(
        earthquakeStartTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02E") end
        )
    )
    TriggerAddCondition(
        earthquakeEndTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02E") end
        )
    )
    TriggerAddAction(earthquakeStartTrigger, EarthquakeStartActions)
    TriggerAddAction(earthquakeEndTrigger, EarthquakeEndActions)
end
return ____exports
end,
["heroes.farSeer.shields"] = function() local ____exports = {}
function ____exports.StartShield(caster, target, markerAbility)
    local casterHandleId = GetHandleId(caster)
    local targetHandleId = GetHandleId(target)
    local casterIndexHash = StringHash("CasterIndex")
    local currentIndex = LoadInteger(udg_ShieldTable, casterIndexHash, casterHandleId) + 1
    SaveInteger(udg_ShieldTable, casterIndexHash, casterHandleId, currentIndex)
    local shieldCount = LoadInteger(udg_ShieldTable, targetHandleId, markerAbility)
    SaveInteger(udg_ShieldTable, targetHandleId, markerAbility, shieldCount + 1)
    if GetUnitAbilityLevel(target, markerAbility) == 0 then
        UnitAddAbility(target, markerAbility)
    end
    return currentIndex
end
function ____exports.EndShield(target, markerAbility)
    local targetHandleId = GetHandleId(target)
    local shieldCount = LoadInteger(udg_ShieldTable, targetHandleId, markerAbility)
    SaveInteger(udg_ShieldTable, targetHandleId, markerAbility, shieldCount - 1)
    if shieldCount == 1 then
        UnitRemoveAbility(target, markerAbility)
    end
end
function ____exports.ShouldRemoveShield(caster, target, currentIndex)
    local casterIndexHash = StringHash("CasterIndex")
    local casterHandleId = GetHandleId(caster)
    local loadIndex = LoadInteger(udg_ShieldTable, casterIndexHash, casterHandleId)
    return (loadIndex ~= currentIndex) or IsUnitDeadBJ(target)
end
return ____exports
end,
["heroes.farSeer.lightningShield"] = function() local ____exports = {}
local ____shields = require("heroes.farSeer.shields")
local StartShield = ____shields.StartShield
local ShouldRemoveShield = ____shields.ShouldRemoveShield
local EndShield = ____shields.EndShield
local function LightningShieldActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local markerAbility = FourCC("A02G")
    local effects = {}
    local currentIndex = StartShield(caster, target, markerAbility)
    while not ShouldRemoveShield(caster, target, currentIndex) do
        for ____, effect in ipairs(effects) do
            DestroyEffect(effect)
        end
        effects = {}
        local damageAmount = GetHeroInt(caster, true) * 0.5
        local targetLocation = GetUnitLoc(target)
        local targetGroup = GetUnitsInRangeOfLocAll(160, targetLocation)
        local picked = FirstOfGroup(targetGroup)
        while picked ~= nil do
            GroupRemoveUnit(targetGroup, picked)
            if ((picked ~= target) and IsPlayerEnemy(
                GetOwningPlayer(picked),
                GetOwningPlayer(caster)
            )) and (not IsUnitDeadBJ(picked)) then
                table.insert(
                    effects,
                    AddSpecialEffectTarget("Abilities\\Spells\\Orc\\LightningShield\\LightningShieldBuff.mdl", picked, "origin")
                )
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            end
            picked = FirstOfGroup(targetGroup)
        end
        RemoveLocation(targetLocation)
        DestroyGroup(targetGroup)
        PolledWait(1)
    end
    EndShield(target, markerAbility)
end
function ____exports.InitLightningShield(hero)
    local lightningShieldTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(lightningShieldTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerAddCondition(
        lightningShieldTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02F") end
        )
    )
    TriggerAddAction(lightningShieldTrigger, LightningShieldActions)
end
return ____exports
end,
["heroes.farSeer.earthShield"] = function() local ____exports = {}
local ____heal = require("util.heal")
local HealUnit = ____heal.HealUnit
local ____main = require("statMod.main")
local SetArmorMod = ____main.SetArmorMod
local ____shields = require("heroes.farSeer.shields")
local StartShield = ____shields.StartShield
local ShouldRemoveShield = ____shields.ShouldRemoveShield
local EndShield = ____shields.EndShield
local function EarthShieldAttackedActions()
    local triggerHandle = GetHandleId(
        GetTriggeringTrigger()
    )
    local lastActivationHash = StringHash("LastActivation")
    local lastActivation = LoadInteger(udg_ShieldTable, triggerHandle, lastActivationHash)
    if (udg_ElapsedSeconds - lastActivation) >= 6 then
        HealUnit(
            GetAttackedUnitBJ(),
            LoadReal(
                udg_ShieldTable,
                triggerHandle,
                StringHash("HealAmount")
            )
        )
        SaveInteger(udg_ShieldTable, triggerHandle, lastActivationHash, udg_ElapsedSeconds)
        local healEffect = AddSpecialEffectTarget(
            "Abilities\\Spells\\NightElf\\Rejuvenation\\RejuvenationTarget.mdl",
            GetAttackedUnitBJ(),
            "origin"
        )
        PolledWait(4)
        DestroyEffect(healEffect)
    end
end
local function EarthShieldActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local markerAbility = FourCC("A02J")
    local armorAmount = GetHeroInt(caster, true) * 0.1
    local currentIndex = StartShield(caster, target, markerAbility)
    local attackedTrigger = CreateTrigger()
    local attackedTriggerAction
    attackedTriggerAction = TriggerAddAction(attackedTrigger, EarthShieldAttackedActions)
    TriggerRegisterUnitEvent(attackedTrigger, target, EVENT_UNIT_ATTACKED)
    SaveReal(
        udg_ShieldTable,
        GetHandleId(attackedTrigger),
        StringHash("HealAmount"),
        GetHeroInt(caster, true) * 2
    )
    SetArmorMod(target, armorAmount)
    while not ShouldRemoveShield(caster, target, currentIndex) do
        PolledWait(1)
    end
    SetArmorMod(target, -armorAmount)
    EndShield(target, markerAbility)
    TriggerRemoveAction(attackedTrigger, attackedTriggerAction)
    DestroyTrigger(attackedTrigger)
end
function ____exports.InitEarthShield(hero)
    local earthShieldTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(earthShieldTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerAddCondition(
        earthShieldTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02H") end
        )
    )
    TriggerAddAction(earthShieldTrigger, EarthShieldActions)
end
return ____exports
end,
["heroes.farSeer.init"] = function() local ____exports = {}
local ____levelStats = require("heroes.levelStats")
local InitLevelStats = ____levelStats.InitLevelStats
local ____chainLightning = require("heroes.farSeer.chainLightning")
local InitChainLightning = ____chainLightning.InitChainLightning
local ____feralSpirit = require("heroes.farSeer.feralSpirit")
local InitFeralSpirit = ____feralSpirit.InitFeralSpirit
local ____earthquake = require("heroes.farSeer.earthquake")
local InitEarthquake = ____earthquake.InitEarthquake
local ____lightningShield = require("heroes.farSeer.lightningShield")
local InitLightningShield = ____lightningShield.InitLightningShield
local ____earthShield = require("heroes.farSeer.earthShield")
local InitEarthShield = ____earthShield.InitEarthShield
function ____exports.InitFarSeer(hero)
    InitLevelStats(
        FourCC("Ofar"),
        50,
        0.1,
        2,
        0.35,
        45,
        15
    )
    InitFeralSpirit(hero)
    InitChainLightning(hero)
    InitEarthquake(hero)
    InitLightningShield(hero)
    InitEarthShield(hero)
end
return ____exports
end,
["heroes.demonHunter.manaBurn"] = function() local ____exports = {}
local function ManaBurnActions()
    local caster = GetSpellAbilityUnit()
    local target = GetSpellTargetUnit()
    local casterAgi = GetHeroAgi(caster, true)
    local damageAmount = casterAgi * 8
    local casterX = GetUnitX(caster)
    local casterY = GetUnitY(caster)
    local targetX = GetUnitX(target)
    local targetY = GetUnitY(target)
    local bolt = AddLightning("MBUR", true, casterX, casterY, targetX, targetY)
    local text = CreateTextTagUnitBJ(
        "-" .. tostring(damageAmount),
        target,
        0,
        10,
        30,
        30,
        100,
        0
    )
    UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
    SetUnitManaBJ(
        target,
        GetUnitState(target, UNIT_STATE_MANA) - damageAmount
    )
    SetTextTagVelocityBJ(text, 64, 90)
    SetTextTagPermanent(text, false)
    SetTextTagLifespan(text, 5)
    SetTextTagFadepoint(text, 3)
    PolledWait(1)
    DestroyLightning(bolt)
    DestroyTextTag(text)
end
function ____exports.InitManaBurn(hero)
    local manaBurnTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(manaBurnTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        manaBurnTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02K") end
        )
    )
    TriggerAddAction(manaBurnTrigger, ManaBurnActions)
end
return ____exports
end,
["heroes.demonHunter.immolation"] = function() local ____exports = {}
local function ImmolationActions()
    local caster = GetSpellAbilityUnit()
    local effects = {}
    local immolationHash = StringHash("Immolation")
    local casterHandle = GetHandleId(caster)
    if not LoadBoolean(udg_AbilityToggleTable, casterHandle, immolationHash) then
        SaveBoolean(udg_AbilityToggleTable, casterHandle, immolationHash, true)
        PolledWait(1)
        while UnitHasBuffBJ(
            caster,
            FourCC("BEim")
        ) do
            for ____, effect in ipairs(effects) do
                DestroyEffect(effect)
            end
            local damageAmount = GetHeroAgi(caster, true) * 0.5
            local targetLocation = GetUnitLoc(caster)
            local targetGroup = GetUnitsInRangeOfLocAll(160, targetLocation)
            local picked = FirstOfGroup(targetGroup)
            while picked ~= nil do
                GroupRemoveUnit(targetGroup, picked)
                if IsPlayerEnemy(
                    GetOwningPlayer(picked),
                    GetOwningPlayer(caster)
                ) and (not IsUnitDeadBJ(picked)) then
                    table.insert(
                        effects,
                        AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Immolation\\ImmolationDamage.mdl", picked, "origin")
                    )
                    UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                end
                picked = FirstOfGroup(targetGroup)
            end
            RemoveLocation(targetLocation)
            DestroyGroup(targetGroup)
            PolledWait(1)
        end
        SaveBoolean(udg_AbilityToggleTable, casterHandle, immolationHash, false)
        for ____, effect in ipairs(effects) do
            DestroyEffect(effect)
        end
    end
end
function ____exports.InitImmolation(hero)
    local immolationTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(immolationTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        immolationTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02L") end
        )
    )
    TriggerAddAction(immolationTrigger, ImmolationActions)
end
return ____exports
end,
["heroes.demonHunter.metamorphosis"] = function() local ____exports = {}
local ____main = require("statMod.main")
local SetStatMod = ____main.SetStatMod
local function MetamorphosisActions()
    local duration = 60
    local transformTime = 1.5
    local caster = GetSpellAbilityUnit()
    local casterAgi = GetHeroAgi(caster, true)
    local attackAmount = casterAgi * 0.75
    local healthAmount = casterAgi * 20
    PolledWait(transformTime)
    if UnitHasBuffBJ(
        caster,
        FourCC("BEme")
    ) then
        SetStatMod(caster, "attack", attackAmount)
        SetStatMod(caster, "health", healthAmount)
        PolledWait(duration)
        SetStatMod(caster, "attack", -attackAmount)
        SetStatMod(caster, "health", -healthAmount)
    end
end
function ____exports.InitMetamorphosis(hero)
    local metamorphosisTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(metamorphosisTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(
        metamorphosisTrigger,
        Condition(
            function() return GetSpellAbilityId() == FourCC("A02M") end
        )
    )
    TriggerAddAction(metamorphosisTrigger, MetamorphosisActions)
end
return ____exports
end,
["heroes.demonHunter.init"] = function() local ____exports = {}
local ____levelStats = require("heroes.levelStats")
local InitLevelStats = ____levelStats.InitLevelStats
local ____manaBurn = require("heroes.demonHunter.manaBurn")
local InitManaBurn = ____manaBurn.InitManaBurn
local ____immolation = require("heroes.demonHunter.immolation")
local InitImmolation = ____immolation.InitImmolation
local ____metamorphosis = require("heroes.demonHunter.metamorphosis")
local InitMetamorphosis = ____metamorphosis.InitMetamorphosis
function ____exports.InitDemonHunter(hero)
    InitLevelStats(
        FourCC("Edem"),
        60,
        0.12,
        3,
        0.45,
        31.5,
        10.5
    )
    InitManaBurn(hero)
    InitImmolation(hero)
    InitMetamorphosis(hero)
end
return ____exports
end,
["heroes.init"] = function() local ____exports = {}
local ____levelStats = require("heroes.levelStats")
local ApplyLevelStats = ____levelStats.ApplyLevelStats
local ____init = require("heroes.paladin.init")
local InitPaladin = ____init.InitPaladin
local ____skillLevels = require("heroes.skillLevels")
local InitSkillLevels = ____skillLevels.InitSkillLevels
local ____init = require("heroes.farSeer.init")
local InitFarSeer = ____init.InitFarSeer
local ____init = require("heroes.demonHunter.init")
local InitDemonHunter = ____init.InitDemonHunter
local function HeroLevelActions()
    local hero = GetLevelingUnit()
    ApplyLevelStats(hero)
    SetPlayerTechResearched(
        GetOwningPlayer(hero),
        FourCC("R000"),
        GetHeroLevel(hero)
    )
end
local function CreateHeroLevelTrigger(hero)
    local levelTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(levelTrigger, hero, EVENT_UNIT_HERO_LEVEL)
    TriggerAddAction(levelTrigger, HeroLevelActions)
end
local function InitHero(hero)
    local unitType = GetUnitTypeId(hero)
    CreateHeroLevelTrigger(hero)
    if unitType == FourCC("Hpal") then
        InitPaladin(hero)
    elseif unitType == FourCC("Ofar") then
        InitFarSeer(hero)
    elseif unitType == FourCC("Edem") then
        InitDemonHunter(hero)
    end
end
local function HeroSoldActions()
    local buyer = GetBuyingUnit()
    local hero = GetSoldUnit()
    local targetLocation = GetRectCenter(gg_rct_HeroSpawn)
    RemoveUnit(buyer)
    SetUnitPositionLoc(hero, targetLocation)
    PanCameraToTimedLocForPlayer(
        GetOwningPlayer(hero),
        targetLocation,
        0
    )
    udg_PlayerHeroes[GetPlayerId(
        GetOwningPlayer(hero)
    ) + 1] = hero
    InitHero(hero)
    RemoveLocation(targetLocation)
end
local function InitHeroSelectionPlayer()
    local picked = GetEnumPlayer()
    local spawnLocation = GetRectCenter(gg_rct_HeroSelection)
    CreateUnitAtLoc(
        picked,
        FourCC("h001"),
        spawnLocation,
        270
    )
    RemoveLocation(spawnLocation)
end
local function InitHeroSelection()
    local heroSoldTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_halt_0213, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_oalt_0001, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_uaod_0216, EVENT_UNIT_SELL)
    TriggerRegisterUnitEvent(heroSoldTrigger, gg_unit_eate_0217, EVENT_UNIT_SELL)
    TriggerAddAction(heroSoldTrigger, HeroSoldActions)
    ForForce(
        GetPlayersAll(),
        InitHeroSelectionPlayer
    )
end
function ____exports.InitHeroes()
    InitHeroSelection()
    InitSkillLevels()
end
return ____exports
end,
["shops.main"] = function() local ____exports = {}
local function NextPageActions()
    local buyer = GetOwningPlayer(
        GetBuyingUnit()
    )
    local currentShop = GetSellingUnit()
    local nextShop = LoadUnitHandle(
        udg_ShopsTable,
        GetHandleId(currentShop),
        0
    )
    SelectUnitForPlayerSingle(nextShop, buyer)
end
local function SetNextShop(firstType, secondType)
    local firstGroup = GetUnitsOfTypeIdAll(firstType)
    local secondGroup = GetUnitsOfTypeIdAll(secondType)
    local firstShop = FirstOfGroup(firstGroup)
    local secondShop = FirstOfGroup(secondGroup)
    local nextPageTrigger = CreateTrigger()
    local firstShopHandle = GetHandleId(firstShop)
    SaveUnitHandle(udg_ShopsTable, firstShopHandle, 0, secondShop)
    TriggerRegisterUnitEvent(nextPageTrigger, firstShop, EVENT_UNIT_SELL_ITEM)
    TriggerAddCondition(
        nextPageTrigger,
        Condition(
            function() return GetItemTypeId(
                GetSoldItem()
            ) == FourCC("I000") end
        )
    )
    TriggerAddAction(nextPageTrigger, NextPageActions)
    DestroyGroup(firstGroup)
    DestroyGroup(secondGroup)
end
local function InitShopTable()
    udg_ShopsTable = InitHashtable()
end
function ____exports.InitShops()
    InitShopTable()
end
return ____exports
end,
["main"] = function() local ____exports = {}
local ____init = require("statMod.init")
local InitStatMod = ____init.InitStatMod
local ____init = require("heroes.init")
local InitHeroes = ____init.InitHeroes
local ____main = require("shops.main")
local InitShops = ____main.InitShops
local function InitGlobalTables()
    udg_ChannelCasters = InitHashtable()
    udg_ShieldTable = InitHashtable()
    udg_AbilityToggleTable = InitHashtable()
    udg_HeroLevelStats = InitHashtable()
end
function ____exports.InitMain()
    InitGlobalTables()
    InitStatMod()
    InitHeroes()
    InitShops()
end
return ____exports
end,
["util.debug"] = function() local ____exports = {}
function ____exports.Debug(message)
    local players = GetPlayersAll()
    DisplayTextToForce(players, message)
end
return ____exports
end,
}
--End custom code
function Trig_Game_Timer_Actions()
    udg_ElapsedSeconds = (udg_ElapsedSeconds + 1)
end

function InitTrig_Game_Timer()
    gg_trg_Game_Timer = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_Game_Timer, 1.00)
    TriggerAddAction(gg_trg_Game_Timer, Trig_Game_Timer_Actions)
end

function Trig_Global_Unit_References_Actions()
    KillUnit(gg_unit_halt_0213)
    KillUnit(gg_unit_oalt_0001)
    KillUnit(gg_unit_uaod_0216)
    KillUnit(gg_unit_eate_0217)
    KillUnit(gg_unit_n001_0002)
end

function InitTrig_Global_Unit_References()
    gg_trg_Global_Unit_References = CreateTrigger()
    TriggerAddAction(gg_trg_Global_Unit_References, Trig_Global_Unit_References_Actions)
end

function Trig_Melee_Initialization_Actions()
    MeleeStartingVisibility()
        require("main").InitMain()
end

function InitTrig_Melee_Initialization()
    gg_trg_Melee_Initialization = CreateTrigger()
    TriggerAddAction(gg_trg_Melee_Initialization, Trig_Melee_Initialization_Actions)
end

function InitCustomTriggers()
    InitTrig_Game_Timer()
    InitTrig_Global_Unit_References()
    InitTrig_Melee_Initialization()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Melee_Initialization)
end

function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    ForcePlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("CityScapeDay")
    SetAmbientNightSound("CityScapeNight")
    SetMapMusic("Music", true, 0)
    CreateRegions()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
    RunInitializationTriggers()
end

function config()
    SetMapName("TRIGSTR_009")
    SetMapDescription("TRIGSTR_011")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, -15296.0, -15616.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end








