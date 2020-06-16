declare interface UnitEvent { unitEventProp: string }
declare interface PlayerUnitEvent { playerUnitEventProp: string }

declare const EVENT_UNIT_SELL: UnitEvent
declare const EVENT_UNIT_HERO_LEVEL: UnitEvent
declare const EVENT_UNIT_SPELL_EFFECT: UnitEvent
declare const EVENT_UNIT_RESEARCH_FINISH: UnitEvent
declare const EVENT_UNIT_SELL_ITEM: UnitEvent
declare const EVENT_UNIT_SPELL_CHANNEL: UnitEvent
declare const EVENT_UNIT_SPELL_ENDCAST: UnitEvent
declare const EVENT_UNIT_ATTACKED: UnitEvent
declare const EVENT_UNIT_SUMMON: UnitEvent

declare const EVENT_PLAYER_UNIT_ATTACKED: PlayerUnitEvent