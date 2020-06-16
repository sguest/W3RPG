function NextPageActions() {
    let buyer = GetOwningPlayer(GetBuyingUnit())
    let currentShop = GetSellingUnit()
    let nextShop = LoadUnitHandle(udg_ShopsTable, GetHandleId(currentShop), 0)

    SelectUnitForPlayerSingle(nextShop, buyer)
}

function SetNextShop(firstType: number, secondType: number) {
    let firstGroup = GetUnitsOfTypeIdAll(firstType)
    let secondGroup = GetUnitsOfTypeIdAll(secondType)
    let firstShop = FirstOfGroup(firstGroup)
    let secondShop = FirstOfGroup(secondGroup)

    let nextPageTrigger = CreateTrigger()
    let firstShopHandle = GetHandleId(firstShop)

    SaveUnitHandle(udg_ShopsTable, firstShopHandle, 0, secondShop)

    TriggerRegisterUnitEvent(nextPageTrigger, firstShop, EVENT_UNIT_SELL_ITEM)
    TriggerAddCondition(nextPageTrigger, Condition(() => GetItemTypeId(GetSoldItem()) === FourCC('I000')))
    TriggerAddAction(nextPageTrigger, NextPageActions)

    DestroyGroup(firstGroup)
    DestroyGroup(secondGroup)
}

function InitShopTable() {
    udg_ShopsTable = InitHashtable()
}

export function InitShops() {
    InitShopTable()
}