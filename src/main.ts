import { InitStatMod } from './statMod/init';
import { InitHeroes } from './heroes/init';
import { InitShops } from './shops/main';

function InitGlobalTables() {
    udg_ChannelCasters = InitHashtable()
    udg_ShieldTable = InitHashtable()
    udg_AbilityToggleTable = InitHashtable()
    udg_HeroLevelStats = InitHashtable()
}

export function InitMain() {
    InitGlobalTables();
    InitStatMod()
    InitHeroes();
    InitShops()
}