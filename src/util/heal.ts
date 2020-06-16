export function HealUnit(target: Unit, amount: number) {
    SetUnitLifeBJ(target, (GetUnitState(target, UNIT_STATE_LIFE) + amount))
}