export function StartShield(caster: Unit, target: Unit, markerAbility: number): number {
    let casterHandleId = GetHandleId(caster)
    let targetHandleId = GetHandleId(target)
    let casterIndexHash = StringHash("CasterIndex")

    let currentIndex = LoadInteger(udg_ShieldTable, casterIndexHash, casterHandleId) + 1
    SaveInteger(udg_ShieldTable, casterIndexHash, casterHandleId, currentIndex)

    let shieldCount = LoadInteger(udg_ShieldTable,  targetHandleId, markerAbility)
    SaveInteger(udg_ShieldTable, targetHandleId, markerAbility, shieldCount + 1)

    if(GetUnitAbilityLevel(target, markerAbility) === 0) {
        UnitAddAbility(target, markerAbility)
    }

    return currentIndex
}

export function EndShield(target: Unit, markerAbility: number) {
    let targetHandleId = GetHandleId(target)
    let shieldCount = LoadInteger(udg_ShieldTable, targetHandleId, markerAbility)
    SaveInteger(udg_ShieldTable, targetHandleId, markerAbility, shieldCount - 1)

    if(shieldCount == 1) {
        UnitRemoveAbility(target, markerAbility)
    }
}

export function ShouldRemoveShield(caster: Unit, target: Unit, currentIndex: number): boolean {
    let casterIndexHash = StringHash("CasterIndex")
    let casterHandleId = GetHandleId(caster)
    let loadIndex = LoadInteger(udg_ShieldTable, casterIndexHash, casterHandleId)

    return (loadIndex !== currentIndex || IsUnitDeadBJ(target))
}