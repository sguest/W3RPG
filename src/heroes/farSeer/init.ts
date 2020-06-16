import { InitLevelStats } from "../levelStats"
import { InitChainLightning } from "./chainLightning"
import { InitFeralSpirit } from "./feralSpirit"
import { InitEarthquake } from "./earthquake"
import { InitLightningShield } from "./lightningShield"
import { InitEarthShield } from "./earthShield"

export function InitFarSeer(hero: Unit) {
    InitLevelStats(FourCC('Ofar'), 50, 0.1, 2, 0.35, 45, 15)
    InitFeralSpirit(hero)
    InitChainLightning(hero)
    InitEarthquake(hero)
    InitLightningShield(hero)
    InitEarthShield(hero)
}