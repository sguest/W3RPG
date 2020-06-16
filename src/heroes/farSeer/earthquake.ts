function EarthquakeStartActions() {
    let caster = GetSpellAbilityUnit()
    let handleId = GetHandleId(caster)
    let earthquakeHash = StringHash("Earthquake")
    let targetLocation = GetSpellTargetLoc()

    let currentIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId) + 1
    SaveInteger(udg_ChannelCasters, earthquakeHash, handleId, currentIndex)

    let loadIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    while(loadIndex === currentIndex) {
        let damageAmount = GetHeroInt(caster, true) * 2.0
        let targetGroup = GetUnitsInRangeOfLocAll(250.00, targetLocation)

        let picked = FirstOfGroup(targetGroup)
        while(picked !== null) {
            GroupRemoveUnit(targetGroup, picked)

            if(IsPlayerEnemy(GetOwningPlayer(picked), GetOwningPlayer(caster)) && !IsUnitDeadBJ(picked)) {
                UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
            }
            picked = FirstOfGroup(targetGroup)
        }

        DestroyGroup(targetGroup)

        PolledWait(1)
        loadIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    }

    RemoveLocation(targetLocation)
}

function EarthquakeEndActions() {
    let caster = GetSpellAbilityUnit()
    let handleId = GetHandleId(caster)
    let earthquakeHash = StringHash("Earthquake")
    let currentIndex = 0

    if(HaveSavedInteger(udg_ChannelCasters, earthquakeHash, handleId)) {
        currentIndex = LoadInteger(udg_ChannelCasters, earthquakeHash, handleId)
    }

    SaveInteger(udg_ChannelCasters, earthquakeHash, handleId, currentIndex + 1)
}

export function InitEarthquake(hero: Unit) {
    let earthquakeStartTrigger = CreateTrigger()
    let earthquakeEndTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(earthquakeStartTrigger, hero, EVENT_UNIT_SPELL_CHANNEL)
    TriggerRegisterUnitEvent(earthquakeEndTrigger, hero, EVENT_UNIT_SPELL_ENDCAST)
    TriggerAddCondition(earthquakeStartTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02E')))
    TriggerAddCondition(earthquakeEndTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02E')))
    TriggerAddAction(earthquakeStartTrigger, EarthquakeStartActions)
    TriggerAddAction(earthquakeEndTrigger, EarthquakeEndActions)
}