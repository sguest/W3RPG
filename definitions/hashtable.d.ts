declare interface Hashtable { hashtableProp: string }

declare function InitHashtable(): Hashtable
declare function SaveInteger(table: Hashtable, parentKey: number, childKey: number, value: number): void
declare function LoadInteger(table: Hashtable, parentKey: number, childKey: number): number
declare function HaveSavedInteger(table: Hashtable, parentKey: number, childKey: number): boolean
declare function SaveReal(table: Hashtable, parentKey: number, childKey: number, value: number): void
declare function LoadReal(table: Hashtable, parentKey: number, childKey: number): number
declare function SaveBoolean(table: Hashtable, parentKey: number, childKey: number, value: boolean): void
declare function LoadBoolean(table: Hashtable, parentKey: number, childKey: number): boolean
declare function SaveHashtableHandle(table: Hashtable, parentKey: number, childKey: number, value: Hashtable): void
declare function LoadHashtableHandle(table: Hashtable, parentKey: number, childKey: number): Hashtable
declare function SaveUnitHandle(table: Hashtable, parentKey: number, childKey: number, value: Unit): void
declare function LoadUnitHandle(table: Hashtable, parentKey: number, childKey: number): Unit