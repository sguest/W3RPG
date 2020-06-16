declare interface Player extends Handle { playerProp: string }

declare const PLAYER_NEUTRAL_PASSIVE: number

declare function Player(playerId: number): Player
declare function PanCameraToTimedLocForPlayer(player: Player, location: Location, delay: number): void
declare function GetOwningPlayer(unit: Unit): Player
declare function GetPlayerId(player: Player): number
declare function GetEnumPlayer(): Player
declare function SetPlayerTechResearched(player: Player, tech: number, level: number): void
declare function IsPlayerEnemy(player: Player, other: Player): boolean
declare function IsPlayerAlly(player: Player, other: Player): boolean
declare function GetPlayerTechCountSimple(upgradeId: number, player: Player): number
declare function SetPlayerAbilityAvailable(player: Player, skillId: number, available: boolean): void