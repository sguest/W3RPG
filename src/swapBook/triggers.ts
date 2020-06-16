export function SwapBookConditions(table: Hashtable): boolean {
    let abilityId = GetSpellAbilityId()
    let numItems = LoadInteger(table, StringHash("NumItems"), 0)

    for(let counter = 0; counter < numItems; counter++) {
        if (LoadInteger(table, StringHash("Parent"), counter) == abilityId) {
            return true
        }
    }

    return false
}

function SwapBookApplyLevel(hero: Unit, table: Hashtable, selector: number) {
    let heroHandle = GetHandleId(hero)
    let selectorBookHash = StringHash("SelectorBook")
    let addedHash = StringHash("AddedAbility")
    let effectHash = StringHash("EffectAbility")
    let level = LoadInteger(table, heroHandle, selector)

    SetUnitAbilityLevel(hero, LoadInteger(table, selector, selectorBookHash), level)
    SetUnitAbilityLevel(hero, selector, level)
    SetUnitAbilityLevel(hero, LoadInteger(table, selector, addedHash), level)
    SetUnitAbilityLevel(hero, LoadInteger(table, selector, effectHash), level)
}

export function SwapBookAddIfMissing(hero: Unit, table: Hashtable, targetSelector: number) {
    let counter = 0
    let numItems = LoadInteger(table, StringHash("NumItems"), 0)
    let selector 
    let parentHash = StringHash("Parent")
    let selectorBookHash = StringHash("SelectorBook")
    let addedHash = StringHash("AddedAbility")
    let found = false

    while(counter < numItems && !found) {
        selector = LoadInteger(table, parentHash, counter)
        if (GetUnitAbilityLevel(hero, LoadInteger(table, selector, selectorBookHash)) >= 1) {
            found = true
        }
        counter++;
    }

    if (!found) {
        UnitAddAbility(hero, LoadInteger(table, targetSelector, selectorBookHash))
        UnitAddAbility(hero, LoadInteger(table, targetSelector, addedHash))
        SwapBookApplyLevel(hero, table, targetSelector)
    }
}

export function SwapBookActions(table: Hashtable) {
    let caster = GetSpellAbilityUnit()
    let abilityId = GetSpellAbilityId()
    let numItems = LoadInteger(table, StringHash("NumItems"), 0)
    let parentHash = StringHash("Parent")
    let selectorBookHash = StringHash("SelectorBook")
    let addedHash = StringHash("AddedAbility")

    for(let counter = 0; counter < numItems; counter++) {
        let selector = LoadInteger(table, parentHash, counter)
        if (selector === abilityId) {
            UnitAddAbility(caster, LoadInteger(table, selector, selectorBookHash))
            UnitAddAbility(caster, LoadInteger(table, selector, addedHash))
        } else {
            UnitRemoveAbility(caster, LoadInteger(table, selector, selectorBookHash))
            UnitRemoveAbility(caster, LoadInteger(table, selector, addedHash))
        }
    }


    for(let counter = 0; counter < numItems; counter++) {
        let selector = LoadInteger(table, parentHash, counter)
        SwapBookApplyLevel(caster, table, selector)
    }
}

export function SwapBookSetLevel(table: Hashtable, hero: Unit, abilityCode: number, level: number) {
    SaveInteger(table, GetHandleId(hero), abilityCode, level)
    SwapBookApplyLevel(hero, table, abilityCode)
}