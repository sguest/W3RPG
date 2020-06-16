function ImmolationActions() {
    let caster = GetSpellAbilityUnit()
    let effects: Effect[] = [];
    let immolationHash = StringHash("Immolation")
    let casterHandle = GetHandleId(caster)

    if(!LoadBoolean(udg_AbilityToggleTable, casterHandle, immolationHash)) {
        SaveBoolean(udg_AbilityToggleTable, casterHandle, immolationHash, true)
        //Need to wait or buff won't be applied yet and immolation will immediately end
        PolledWait(1)

        while(UnitHasBuffBJ(caster, FourCC('BEim'))) {
            for(let effect of effects) {
                DestroyEffect(effect)
            }

            let damageAmount = GetHeroAgi(caster, true) * 0.5
            let targetLocation = GetUnitLoc(caster)
            let targetGroup = GetUnitsInRangeOfLocAll(160.00, targetLocation)

            let picked = FirstOfGroup(targetGroup)
            while(picked !== null) {
                GroupRemoveUnit(targetGroup, picked)

                if(IsPlayerEnemy(GetOwningPlayer(picked), GetOwningPlayer(caster)) && !IsUnitDeadBJ(picked)) {
                    table.insert(effects, AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Immolation\\ImmolationDamage.mdl", picked, "origin"))
                    UnitDamageTargetBJ(caster, picked, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
                }
                picked = FirstOfGroup(targetGroup)
            }

            RemoveLocation(targetLocation)
            DestroyGroup(targetGroup)

            PolledWait(1)
        }

        SaveBoolean(udg_AbilityToggleTable, casterHandle, immolationHash, false)
        for(let effect of effects) {
            DestroyEffect(effect)
        }
    }
}

export function InitImmolation(hero: Unit) {
    let immolationTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(immolationTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(immolationTrigger, Condition(() => GetSpellAbilityId() == FourCC('A02L')))
    TriggerAddAction(immolationTrigger, ImmolationActions)
}