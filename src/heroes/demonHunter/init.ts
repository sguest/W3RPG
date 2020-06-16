import { InitLevelStats } from "../levelStats"
import { InitManaBurn } from "./manaBurn"
import { InitImmolation } from "./immolation"
import { InitMetamorphosis } from "./metamorphosis"

export function InitDemonHunter(hero: Unit) {
    InitLevelStats(FourCC('Edem'), 60, 0.12, 3, 0.45, 31.5, 10.5)
    InitManaBurn(hero)
    InitImmolation(hero)
    InitMetamorphosis(hero)
}