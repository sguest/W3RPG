declare interface Unit extends Handle { unitProp: string }
type UnitState = number;
type AttackType = number;
type DamageType = number;

declare const UNIT_STATE_LIFE: UnitState
declare const UNIT_STATE_MANA: UnitState

declare const ATTACK_TYPE_NORMAL: AttackType
declare const DAMAGE_TYPE_NORMAL: DamageType

declare function GetBuyingUnit(): Unit
declare function GetSoldUnit(): Unit
declare function RemoveUnit(unit: Unit): void
declare function KillUnit(unit: Unit): void
declare function SetUnitPositionLoc(unit: Unit, location: Location): void
declare function CreateUnitAtLoc(owner: Player, unitType: number, location: Location, facing: number): void
declare function GetUnitTypeId(unit: Unit): number
declare function GetLevelingUnit(): Unit
declare function GetHeroLevel(hero: Unit): number
declare function UnitRemoveAbility(unit: Unit, ability: number): void
declare function UnitAddAbility(unit: Unit, ability: number): void
declare function SetUnitAbilityLevel(unit: Unit, ability: number, level: number): void
declare function GetUnitAbilityLevel(unit: Unit, ability: number): number
declare function SetUnitLifeBJ(unit: Unit, amount: number): void
declare function GetUnitState(unit: Unit, state: UnitState): number
declare function CreateUnit(owner: Player, unitType: number, x: number, y: number, facing: number): Unit
declare function GetUnitX(unit: Unit): number
declare function SetUnitX(unit: Unit, x: number): void
declare function GetUnitY(unit: Unit): number
declare function SetUnitY(unit: Unit, y: number): void
declare function IssueTargetOrder(unit: Unit, order: string, target: Unit): void
declare function GetSpellAbilityUnit(): Unit
declare function GetSpellTargetUnit(): Unit
declare function GetUnitLoc(unit: Unit): Location
declare function GetHeroStr(hero: Unit, includeBonuses: boolean): number
declare function GetHeroAgi(hero: Unit, includeBonuses: boolean): number
declare function GetHeroInt(hero: Unit, includeBonuses: boolean): number
declare function UnitDamageTargetBJ(attacker: Unit, target: Unit, amount: number, attackType: AttackType, damageType: DamageType): void
declare function IsUnitDeadBJ(unit: Unit): boolean
declare function GetAttacker(): Unit
declare function GetAttackedUnitBJ(): Unit
declare function GetTriggerUnit(): Unit
declare function GetSellingUnit(): Unit
declare function SetUnitOwner(unit: Unit, player: Player, changeColour: boolean): void
declare function SelectUnitForPlayerSingle(unit: Unit, player: Player): void
declare function GetUnitsOfTypeIdAll(unitType: number): Group
declare function GetSummonedUnit(): Unit
declare function GetSummoningUnit(): Unit
declare function UnitHasBuffBJ(unit: Unit, buffId: number): boolean
declare function SetUnitManaBJ(unit: Unit, amount: number): void