declare interface Location { locationProp: string }
declare interface Rect { rectProp: string }

declare function GetRectCenter(rect: Rect): Location
declare function RemoveLocation(location: Location): void
declare function DistanceBetweenPoints(point1: Location, point2: Location): number
declare function GetSpellTargetLoc(): Location