declare interface Effect { effectProp: string }

declare function AddSpecialEffectTarget(model: string, target: Unit, attachment: string): Effect
declare function DestroyEffect(effect: Effect): void