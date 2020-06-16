declare interface Trigger extends Handle { triggerProp: string }
declare interface TriggerCondition { triggerConditionProp: string }
declare type TriggerAction = () => void

declare function Condition(callback: ()=>boolean): TriggerCondition
declare function CreateTrigger(): Trigger
declare function TriggerRegisterUnitEvent(trigger: Trigger, unit: Unit, event: UnitEvent): void
declare function TriggerRegisterAnyUnitEventBJ(trigger: Trigger, event: PlayerUnitEvent): void
declare function TriggerRegisterPlayerUnitEvent(trigger: Trigger, event: PlayerUnitEvent): void
declare function TriggerAddAction(trigger: Trigger, action: TriggerAction): TriggerAction
declare function TriggerAddCondition(trigger: Trigger, condition: TriggerCondition): void
declare function TriggerRegisterPlayerSelectionEventBJ(trigger: Trigger, player: Player, selected: boolean): void
declare function GetTriggeringTrigger(): Trigger
declare function TriggerRemoveAction(trigger: Trigger, action: TriggerAction): void
declare function DestroyTrigger(trigger: Trigger): void