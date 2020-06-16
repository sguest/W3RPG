declare interface Lightning { lightningProp: string }

declare function AddLightning(model: string, checkVisibility: boolean, x1: number, x2: number, y1: number, y2: number): Lightning
declare function DestroyLightning(lightning: Lightning): void