class EventInvasion
{
    // Сделать спавн по координатам/области. Сделать в классе параметр массив каких юнитов будет спавнится
    string discroption;
    int dif;
    void doinvasion(int witchPlayer, string units, int beattackedPlayer)
    {  
        group   Warband = CreateGroup();
        unit    u;
        for (int i = 0; i < (GLOBAL_DIF + CountNowPlayers() - dif); ++i)
        {
            u = CreateUnit(Player(witchPlayer), String2Id(units), 250.0, 250.0, 270);
            GroupAddUnit(Warband, u);
        }

        //GroupPointOrderLoc(Warband, "attack", LocCords(ZONE2));
        //  
        //  GroupEnumUnitsOfPlayer
        //  
        // Узнаём корды жертвы 
        group Ghrup = CreateGroup();

        print("\n1.Units = " + GroupGetCount(Ghrup) );
        GroupEnumUnitsOfPlayer( Ghrup, Player(0), nil );

        print("\n2.Units = " + GroupGetCount(Ghrup) +"\nFoG = " + FirstOfGroup(Ghrup));
        
        print(" "+ GroupContainsUnit(Ghrup, 'u000'));
        unit un = GroupForEachUnit(Ghrup);
        //unit un = GroupGetUnitByIndex(Ghrup, String2Id("u000"));
        location p = GetUnitLoc(un);
        CreateUnitAtLoc(Player(0), 'nrog', p, 270);
        
        print("\nГруппа = " + Ghrup + "\nЮнит = " + un + "\nLocation = " + p + "\nCount of Group = "+ GroupGetCount(Ghrup) +"\n");
        GroupPointOrderLoc( Warband, "move", p);

                               // Тупо посылать ораву в атаку? Кхм... ну ладно, пока что 
        DestroyGroup(Ghrup);
        MsgForAllPlayers(discroption);
    }
    // Добавить так же звуковое сопровождение
    // Сделать функцию, которая будет после разгрома нашествие посылает ошмётки войнов в разные стороны с атакой и уничтожает саму группу
    void endinvasion()
    {

        DestroyGroup(Warband); 
    }
}

// Обычные вторжения
EventInvasion Brigants; // Налёт бандитов с их главарём
EventInvasion Orcs;     // Орки, по типу как Battle Brothers??? - Мб
EventInvasion Dwarfs;   // Хачу шоб гномики из огнестрела пиу-пиу в человечков и шоб у них пердаки подрывались и меня бранили

// Вторжения из-за Веры
EventInvasion CultistGroGorod;  // Против оксвернителей алтаря Гро-Горота
EventInvasion Inquisition;      // Против Старых Богов, Запретных Богов, Язычников

// Вторжения Королевств
EventInvasion Zendar;       // Топ Герои    
EventInvasion Rondor;       // Наёмники/Рыцари
EventInvasion ManHabr;      // Маги и им сочувствующие

// Dark Invasion
EventInvasion Hounds;       // Пёсики ав-ав!

// 9 - Королевства // 10 - Отребье // 11 - Злые Сущности

void InitInvation()
{
    Brigants.discroption = "Шайка марадёров прознала о развивающихся поселениях в этим землях и устроило ходку сюда...";
    Brigants.dif = 3;

    Rondor.discroption = "Знать Рондора решила устроить всоим вассалам-рыцарям испытания ввиде голов всех";
    Rondor.dif = 10;

}