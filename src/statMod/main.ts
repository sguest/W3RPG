export function SetStatMod(target: Unit, statName: string, delta: number): number {
    let handleId = GetHandleId(target)
    let statHash = StringHash(statName)
    let maxValue = LoadInteger(udg_StatModTable, StringHash("MaxValue"), statHash)
    let minValue = maxValue * -2
    let index = 1
    let useNegativeMod = false

    let currentValue = LoadInteger(udg_StatModTable, handleId, statHash) + math.floor(delta)
    SaveInteger(udg_StatModTable, handleId, statHash, currentValue)

    UnitRemoveAbility(target, LoadInteger(udg_StatModTable, statHash, minValue))

    if(currentValue < 0) {
        currentValue = -minValue + currentValue
        useNegativeMod = true
    }

    while(index <= maxValue) {
        if(currentValue % 2 === 1) {
            UnitAddAbility(target, LoadInteger(udg_StatModTable, statHash, index))
        } else {
            UnitRemoveAbility(target, LoadInteger(udg_StatModTable, statHash, index))
        }
        currentValue = math.floor(currentValue / 2)
        index = index * 2
    }

    if(useNegativeMod) {
        UnitAddAbility(target, LoadInteger(udg_StatModTable, statHash, minValue))
    }

    return currentValue
}

export function SetAttackMod(target: Unit, delta: number): number {
    return SetStatMod(target, "attack", delta)
}

export function SetHealthMod(target: Unit, delta: number): number {
    return SetStatMod(target, "health", delta)
}

export function SetArmorMod(target: Unit, delta: number): number {
    return SetStatMod(target, "armor", delta)
}

export function SetHealthRegenMod(target: Unit, delta: number): number {
    return SetStatMod(target, "healthRegen", delta)
}

export function SetAttackSpeedMod(target: Unit, delta: number): number {
    return SetStatMod(target, "attackSpeed", delta)
}

export function SetManaMod(target: Unit, delta: number): number {
    return SetStatMod(target, "mana", delta)
}

export function SetManaRegenMod(target: Unit, delta: number): number {
    return SetStatMod(target, "manaRegen", delta)
}