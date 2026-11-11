////////////////////////////////////////////////////////////
/////// ТРИГГЕРЫ
////////////////////////////////////////////////////////////

// ****************************** ТРАТА РЕСУРСОВ ЗА ПОСТРОЙКИ ***********************************
trigger ExpenditureResTrig = CreateTrigger();

void ExpenditureResAction()
{
    switch(GetUnitTypeId(GetTriggerUnit()))
    {
        case 'f001': 
        for (int i = 0; i < 9; ++i)
        {
            if (GetTriggerPlayer() == Player(i))
            {
                

                Stone[i]--; 
                break;
            }
        }
    }
}

void ExpenditureResInit()
{
    for (int i = 0; i < 8; ++i)
    {
        TriggerRegisterPlayerUnitEvent    (ExpenditureResTrig, Player(i), EVENT_PLAYER_UNIT_CONSTRUCT_START, nil);
       // TriggerAddCondition               (ExpenditureResTrig, )
        TriggerAddAction                  (ExpenditureResTrig, ExpenditureResAction);
    }
}


// ****************************** FOOD ***********************************
int ResultOfFood  = 0;

void FoodProductionAll()
{
    // ПЕРЕМЕННЫЕ
    group AllAnimalofProduct    = CreateGroup();
    group AllPeople             = CreateGroup();
   
    for (int i = 0; i < 9; i++)
    {
        // Подсчёт количества животины у игрока
        GroupEnumUnitsOfPlayer(AllAnimalofProduct, Player(i), Filter(function()
        {
            switch (GetUnitTypeId(GetFilterUnit()))
            {
                case 'achn' : ResultOfFood = (ResultOfFood + 1 * 1); break;   // Курица
                case 'ashp' : ResultOfFood = (ResultOfFood + 1 * 2); break;   // Овца
                case 'apig' : ResultOfFood = (ResultOfFood + 1 * 3); break;   // Свинья
            }
        
            return AnimalFood.find(GetFilterUnit()) != -1;}));
        // ResultOfFood = GroupGetCount(AllAnimalofProduct); 


        // Подсчёт количества юнитов(вроде бы без животины), и итоговый счёт 
        GroupEnumUnitsOfPlayer(AllPeople, Player(i), Filter(function() {return AnimalFood.find(GetFilterUnit()) == -1;}));
        ResultOfFood = ResultOfFood - GroupGetCount(AllPeople);

        // Запись в массив
        Food[i] += ResultOfFood;
        if (Food[i] < 0)
        {
            Food[i] = 0;
            DisplayTextToPlayer(Player(i), 0, 0, "ГОЛОД!!!!");
        }

        DisplayTextToPlayer(Player(i), 0, 0, "Потребление пищи = " + ResultOfFood);
        ResultOfFood = 0;
    }
    DestroyGroup(AllAnimalofProduct);
    DestroyGroup(AllPeople);
}

void FoodItemUse()
{
    print("\nТриггер сработал\n");
    switch(GetItemTypeId(GetTriggerItem()))
    {
        
        case 'phea': Food[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] += 400; print("\nПредмет актив1\n"); break;
        case 'I00M': Food[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))] += 400; print("\nПредмет актив1\n"); break;
    }
}

void FoodInit()
{
    trigger FoodProductionTrig = CreateTrigger();
    TriggerRegisterTimerEvent (FoodProductionTrig, TIMER_CONSUPTION_OF_FOOD, true);
    TriggerAddAction          (FoodProductionTrig, FoodProductionAll);

    trigger FoodItemUseTrig = CreateTrigger();
    TriggerRegisterPlayerUnitEvent (FoodItemUseTrig, Player(0), EVENT_PLAYER_UNIT_USE_ITEM, nil);
    TriggerAddAction         (FoodItemUseTrig, FoodItemUse);
    //TriggerRegisterTimerEvent (FoodItemUseTrig, TIMER_CONSUPTION_OF_FOOD, true);
   

}

// ******************************  ***********************************

void DamageMineToRes()
{
    if (CanMineUnits.find(GetUnitTypeId(GetEventDamageSource())) != -1 && OreVines.find(GetUnitTypeId(GetTriggerUnit())) != -1)
    {
        switch(GetUnitTypeId(GetTriggerUnit()))
        {
            case 'r0st': ++Stone[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))];       break;
            case 'r0ir': ++Iron[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))];        break;
            case 'r0cr': ++Crystal[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))];     break;
        }
    }
}


void SpawnOreOnMap()
{
    int x;
    int y;
    int count = 0;
    unit orevine;
    while (count < ORE_QUANTITY)
    {
        orevine = OreVines[GetRandomInt(0, 2)];
        x = GetRandomInt(-24000, 24000);
        y = GetRandomInt(-24000, 24000);
        CreateUnitAtLoc( Player(15), orevine, Location(x, y), 180);
        count++;
    }


}

// void ExchargeRes(){}

void InitRes()
{  
    // Апдейтер каждые N секунд таблицы ресов
    trigger TimerUpdateResoursesBoard = CreateTrigger();
    TriggerRegisterTimerEvent (TimerUpdateResoursesBoard, TIMER_UPDATING_TABLE_OF_RES, true);
    TriggerAddAction          (TimerUpdateResoursesBoard, ResourceTableUpdating);

    unit localbro;
    localbro = CreateUnitAtLoc(Player(15), 'r0ir', Location( 300.0, 300.0 ), 270);
    // Удар по жиле в руду
    trigger TakeDamageForMine = CreateTrigger();
    TriggerRegisterPlayerUnitEvent(TakeDamageForMine, Player(15), EVENT_PLAYER_UNIT_DAMAGED, nil);
    TriggerAddAction(TakeDamageForMine, DamageMineToRes);
}

void InitMenu()
{

    InitResourceTable();
    SpawnOreOnMap();
    InitTrigRes();
}

void InitTrigRes()
{
    ExpenditureResInit();
    FoodInit();
}