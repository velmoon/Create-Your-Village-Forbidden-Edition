// Для избежания путаницы: все функции будут начинатся с MF_ , что расшифровывается как MyFuncition

// Различные самописные функции для упрощения жизни

void MsgForAllPlayers(string msg)
{
    for (int i = 0; i < 9; ++i)
    {
        DisplayTextToPlayer(Player(i), 0.0, 0.0, msg);
    }
}


rect LocCords(rect terra)
{
    return Location( GetRectCenterX( terra ), GetRectCenterY( terra ) );
}

void ResForAllPlayers(int resg, int resl)
{
    for (int i = 0; i < 9; ++i)
    {
        SetPlayerState(Player(i), PLAYER_STATE_RESOURCE_GOLD,    resg);
        SetPlayerState(Player(i), PLAYER_STATE_RESOURCE_LUMBER,  resl);
    }
    
}

int CountNowPlayers()
{   
    int counts = 0;
    player p; 
   


    for (int i = 0; i < 9; ++i)
    {
        p = Player(i);
        if(GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING)
        {++counts;}
    }
    return counts;
}

void MF_TriggerRegisterAnyUnitEvent( trigger trig, playerunitevent whichEvent )
{
    for ( int i = 0; i < 9; i++ )
    {
        TriggerRegisterPlayerUnitEvent( trig, Player( i ), whichEvent, nil );
    }
}


void testpoint(string msg)
{
    print("\n" + msg + "\n");
}

location GetRandomLocInWorld()
{
    float x = GetRandomReal(-24000, 24000);
    float y = GetRandomReal(-24000, 24000);
  
    return Location(x, y);  
}