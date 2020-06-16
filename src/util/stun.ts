export function UnitStunTarget(caster: Unit, target: Unit, duration: number) {
    let stunner = CreateUnit(GetOwningPlayer(caster), FourCC('h000'), GetUnitX(target), GetUnitY(target), 0)
    UnitAddAbility(stunner, FourCC('A00G'))
    SetUnitAbilityLevel(stunner, FourCC('A00G'), duration)
    IssueTargetOrder(stunner, "thunderbolt", target)

    PolledWait(2)
    RemoveUnit(stunner)
}