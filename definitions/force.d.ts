declare interface Force { forceProp: string }

declare function ForForce(force: Force, callback: ()=> void): void
declare function GetPlayersAll(): Force
declare function DisplayTextToForce(force: Force, message: string): void