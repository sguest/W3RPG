declare interface TextTag extends Handle { textTagProp: string }

declare function CreateTextTagUnitBJ(text: string, unit: Unit, zOffset: number, size: number, red: number, green: number, blue: number, alpha: number): TextTag
declare function SetTextTagVelocityBJ(tag: TextTag, xVelocity: number, yVelocity: number): void
declare function SetTextTagPermanent(tag: TextTag, permanent: boolean): void
declare function SetTextTagLifespan(tag: TextTag, lifespan: number): void
declare function SetTextTagFadepoint(tag: TextTag, fadepoint: number): void
declare function DestroyTextTag(tag: TextTag): void