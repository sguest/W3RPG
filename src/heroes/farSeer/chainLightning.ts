function ChainLightningActions() {
    let caster = GetSpellAbilityUnit()
    let target = GetSpellTargetUnit()
    let casterIntellect = GetHeroInt(caster, true)
    let damageAmount = casterIntellect * 5
    let bouncesRemaining = 6
    let lastTarget = caster

    let lightnings: Lightning[] = [];
    let effects: Effect[] = [];

    while(bouncesRemaining > 0) {
        let startX = GetUnitX(lastTarget)
        let startY = GetUnitY(lastTarget)
        let targetX = GetUnitX(target)
        let targetY = GetUnitY(target)
        table.insert(lightnings, AddLightning("CLPB", true, startX, startY, targetX, targetY))
        table.insert(lightnings, AddLightning("CLSB", true, startX, startY, targetX, targetY))
        table.insert(effects, AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl", target, "origin"))
        UnitDamageTargetBJ(caster, target, damageAmount, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL)
        let targetLocation = GetUnitLoc(target)
        let targetGroup = GetUnitsInRangeOfLocAll(500.00, targetLocation)
        let found = false

        let picked = GroupPickRandomUnit(targetGroup)
        while(!found && picked !== null) {
            if(IsPlayerEnemy(GetOwningPlayer(picked), GetOwningPlayer(caster)) && !IsUnitDeadBJ(picked)) {
                found = true
                bouncesRemaining = bouncesRemaining - 1
                damageAmount = damageAmount * 0.85
                lastTarget = target
                target = picked
            }
            picked = GroupPickRandomUnit(targetGroup)
        }

        if (!found) {
            bouncesRemaining = 0
        }

        DestroyGroup(targetGroup)
        RemoveLocation(targetLocation)
    }

    PolledWait(1)

    for(let lightning of lightnings) {
        DestroyLightning(lightning)
    }

    for(let effect of effects) {
        DestroyEffect(effect);
    }
}

export function InitChainLightning(hero: Unit) {
    let chainLightningTrigger = CreateTrigger()
    TriggerRegisterUnitEvent(chainLightningTrigger, hero, EVENT_UNIT_SPELL_EFFECT)
    TriggerAddCondition(chainLightningTrigger, Condition(() => GetSpellAbilityId() == FourCC('A00Y')))
    TriggerAddAction(chainLightningTrigger, ChainLightningActions)
}