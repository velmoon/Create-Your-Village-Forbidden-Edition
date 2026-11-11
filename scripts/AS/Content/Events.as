// Отребье
EventBaseCommon OutlawRaid;
EventBaseCommon OutlawTavern;
EventBaseCommon OutlawFort;
// Уникумы
EventBaseCommon AloneWolf;
// Животина
EventBaseCommon Pigs;
EventBaseCommon WolfMigration;
EventBaseCommon AnimalMigration;
EventBaseCommon WolfAttack;
// Магазины
EventBaseCommon WitchShop;
// Караваны
EventBaseCommon RoyalCaravan;
EventBaseCommon Caravan;

// Пока что тут будут. Твари
EventBaseCommon Ogre;
EventBaseCommon Dragon; // ???? 

void ChoiseRareEvent()
{
    switch(GetRandomInt(1, 10))
    {
        case 1:     Caravan.doevent();      break;
        case 2:     Pigs.doevent();         break;
        case 3:     print("Анлак");         break;
        case 4:     print("Анлак");         break;
        case 5:     print("Анлак");         break;
        case 6:     print("Анлак");         break;
        case 7:     print("Анлак");         break;
        case 8:     print("Анлак");         break;
        case 9:     print("Анлак");         break;
        case 10:    print("Анлак");         break;
    }


}

void ChoiseEvent()
{
    switch(GetRandomInt(1, 10))
    {
        case 1:     Caravan.doevent();      break;
        case 2:     Pigs.doevent();         break;
        case 3:     OutlawRaid.doevent();         break;
        case 4:     OutlawRaid.doevent();         break;
        case 5:     print("Анлак");         break;
        case 6:     print("Анлак");         break;
        case 7:     print("Анлак");         break;
        case 8:     print("Анлак");         break;
        case 9:     print("Анлак");         break;
        case 10:    ChoiseRareEvent();      break;
    }



}


void InitEvents()
{
    trigger EventTimer = CreateTrigger();
    TriggerRegisterTimerEvent (EventTimer, TIMER_EVENT, true);
    TriggerAddAction          (EventTimer, ChoiseEvent); 



    Caravan.discroption     = "|c000080C0[СОБЫТИЕ]|r Отчаянный караван решил сократить путь и отправился через эти земли для сокращения маршрута...";
    Caravan.uarray          = {'hpea', 'hfoo'};
    Caravan.countUnit       = {3, 4};
    Caravan.countAll        = 7; 
    Caravan.PlayerNumber    = 0;
    Caravan.command         = Order::move;
    Caravan.local           = Location(300, 300);
    Caravan.x               = 1000.0;
    Caravan.y               = 1000.0;

    OutlawRaid.discroption  = "|c000080C0[СОБЫТИЕ]|r ГОЛОВОРЕЗЫ ПОШЛИ ПОГУЛЯТЬ";
    OutlawRaid.uarray       = {'hpea', 'nrog'};
    OutlawRaid.countUnit    = {4, 1};
    OutlawRaid.countAll     = 5;
    OutlawRaid.PlayerNumber = 11;
    OutlawRaid.command      = Order::attack;
    OutlawRaid.local        = Location(3000, 3000);
    OutlawRaid.x            = 300.0;
    OutlawRaid.y            = 300.0;

    Pigs.discroption  = "|c000080C0[СОБЫТИЕ]|r ОВЦЫ УЖЕ В КРАЙ ОБОРЗЕЛИ И УЖЕ СПАВНЯТСЯ НА ЗАБЫТЫХ ЗЕЛМЯХ ИЗ ВОЗДУХА";
    Pigs.uarray       = {'ashp'};
    Pigs.countUnit    = {4};
    Pigs.countAll     = 5;
    Pigs.PlayerNumber = 0;
    Pigs.command      = Order::stunned;
    Pigs.local        = Location(3000, 3000);
    Pigs.x            = 300.0;
    Pigs.y            = 300.0;




   // Caravan.themestr    = "resource\\sounds\\dragonstick-miss.ogg"; 


}