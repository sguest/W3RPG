export function InitSwapBookTable(table: Hashtable) {
    SaveInteger(table, StringHash("NumItems"), 0, 0)
}

export function InitSwapBook(table: Hashtable, selector: number, selectorBook: number, addedAbility: number, effectAbility: number) {
    let count = LoadInteger(table, StringHash("NumItems"), 0)
    SaveInteger(table, StringHash("Parent"), count, selector)
    count = count + 1
    SaveInteger(table, StringHash("NumItems"), 0, count)
    SaveInteger(table, selector, StringHash("SelectorBook"), selectorBook)
    SaveInteger(table, selector, StringHash("AddedAbility"), addedAbility)
    SaveInteger(table, selector, StringHash("EffectAbility"), effectAbility)
}