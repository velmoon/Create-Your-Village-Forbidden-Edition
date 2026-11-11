void SpawnWildAnimals()
{
    int x;
    int y;
    uint8 z = 0;
    uint8 count = 0;
    while (count < WILD_ANIMAL_QUANTITY_AT_START)
    {
        unit wildanimal = AnimalWild[GetRandomInt(0, 9)];
        int wildanimalID = wildanimal;
        location Local = GetRandomLocInWorld();
        switch(wildanimalID)
        {
            case 'hwbv': z = GetRandomInt(1, 3);  break;
            case 'hwsp': z = GetRandomInt(1, 3);  break;
            case 'hwck': z = GetRandomInt(1, 5);  break;
            case 'hwpg': z = GetRandomInt(2, 3);  break;
            case 'hwrt': z = GetRandomInt(2, 3);  break;
            case 'hder': z = GetRandomInt(2, 4);  break;
            case 'htch': z = 1;  break;
            case 'hegl': z = 1;  break;
            case 'hwst': z = 1;  break;
            case 'hsnk': z = GetRandomInt(1, 2);  break;
        }
        
        for (uint8 i = 0; i < z; i++)
        {
            CreateUnitAtLoc( Player(PLAYER_NEUTRAL_PASSIVE), wildanimal, Local, 180);
            count++;
        }
    }
}

bool AnimalRunAwayConditions()
{
    if (AnimalWild.find(GetTriggerUnit()) != -1) 
    {return true;}
    else 
    {return false;}
}

void AnimalRunAwayAction()
{
    location point = GetRandomLocInWorld();
    IssuePointOrderLoc( GetTriggerUnit(), "move", point );
    RemoveLocation( point );
    //point = null;
    print("Триггер сработал! Животное побежала ав-ав");
}

void AnimalRunAway()
{
    // *************************** ООООООООООЧЕНЬ СОМНИТЕЛЬНО, НО ОК
    trigger RunAway = CreateTrigger();

    TriggerRegisterPlayerUnitEvent( RunAway, Player(PLAYER_NEUTRAL_PASSIVE), EVENT_PLAYER_UNIT_ATTACKED, nil);
    TriggerAddCondition           ( RunAway, Condition(AnimalRunAwayConditions));
    TriggerAddAction              ( RunAway, @AnimalRunAwayAction );
}