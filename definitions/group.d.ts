declare interface Group { groupProp: string }

declare function GetUnitsInRangeOfLocAll(range: number, location: Location): Group
declare function GroupRemoveUnit(group: Group, unit: Unit): void
declare function DestroyGroup(group: Group): void
declare function FirstOfGroup(group: Group): Unit
declare function GroupPickRandomUnit(group: Group): Unit