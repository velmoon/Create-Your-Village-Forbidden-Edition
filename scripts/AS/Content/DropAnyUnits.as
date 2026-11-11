dictionary DropRules;

class DropInfo {
    array<item>  ItemsDrop   ; // Дроп вещей
    array<float> Chance      ; // Шанс дропа
    array<uint8> MaxCount    ; // Максимальное кол-во
}

void AddDropRule(int UnitID, array<item> ItemID, array<float> ChanceOfDrop, array<uint8> MaxCountOfDrop)
{
    DropInfo info;
    string key = "" + UnitID;

    info.ItemsDrop  = ItemID;
    info.Chance     = ChanceOfDrop;
    info.MaxCount   = MaxCountOfDrop;
    DropRules.set(key, info);
}

void InitDropRules()
{
    AddDropRule('hwbv', {'WDBS'}, {100.0}, {1});                            // Дикий кабан
    AddDropRule('hwsp', {'WDTS'}, {100.0}, {1});                            // Дикая овца
    AddDropRule('hwck', {'WDSS'}, {100.0}, {1});                            // Дикая курица
    AddDropRule('hwpg', {'WDJS'}, {100.0}, {1});                            // Дикая свинья
    AddDropRule('hwrt', {'WDSS'}, {100.0}, {1});                            // Дикий кролик
    AddDropRule('hder', {'WDJS', 'WDDH'}, {100.0, 100.0}, {1, 1});          // Олень
    AddDropRule('htch', {'WDSS'}, {100.0}, {1});                            // Черепаха
    AddDropRule('hegl', {'WDSS'}, {100.0}, {1});                            // Сокол
    AddDropRule('hwst', {'WDSS'}, {100.0}, {1});                            // Стервятник
    AddDropRule('hsnk', {'WDSS'}, {100.0}, {1});                            // Ящерица

    AddDropRule('dwmt', {'WDBS'}, {100.0}, {1});                            // Мамонт
    AddDropRule('dwtr', {'WDTS'}, {100.0}, {1});                            // Тролль 
    AddDropRule('dwwf', {'WDWS'}, {100.0}, {1});                            // Волк
    
    //AddDropRule('', {''}, {0.0}, {1});        // Шаблон
}

void OnAnyUnitDeath()
{
    
    unit DeadUnit = GetTriggerUnit();
    int DeadUnitID = GetUnitTypeId(DeadUnit);
    string key = "" + DeadUnitID;
    if (DropRules.exists(key))
    {
        DropInfo info;
        DropRules.get(key, info);

        for(int i = 0; i < info.ItemsDrop.length(); ++i)
            if (GetRandomReal(0.0, 100.0) <= info.Chance[i])
            {
                CreateItem(info.ItemsDrop[i], GetUnitX(DeadUnit), GetUnitY(DeadUnit));
            }
    }  

}

void InitTrigAnyUnitDrop()
{
    trigger TrigAnyUnitDrop = CreateTrigger();
    for (uint8 i = 0; i < 16; ++i)
    {
        TriggerRegisterPlayerUnitEvent(TrigAnyUnitDrop, Player(i), EVENT_PLAYER_UNIT_DEATH, nil);
    }
    TriggerAddAction(TrigAnyUnitDrop, @OnAnyUnitDeath);
    InitDropRules();
}