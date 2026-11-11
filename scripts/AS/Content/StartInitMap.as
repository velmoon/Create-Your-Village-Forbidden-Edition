namespace PRESTART_INIT_MAP
{
    void InitCustomPlayerSlots()
    {
        SetPlayerStartLocation(Player(0),0);
        ForcePlayerStartLocation(Player(0),0);
        SetPlayerColor(Player(0),PLAYER_COLOR_RED);
        SetPlayerRacePreference(Player(0),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(0),false);
        SetPlayerController(Player(0),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(1),1);
        ForcePlayerStartLocation(Player(1),1);
        SetPlayerColor(Player(1),ConvertPlayerColor(1));
        SetPlayerRacePreference(Player(1),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(1),false);
        SetPlayerController(Player(1),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(2),2);
        ForcePlayerStartLocation(Player(2),2);
        SetPlayerColor(Player(2),ConvertPlayerColor(2));
        SetPlayerRacePreference(Player(2),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(2),false);
        SetPlayerController(Player(2),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(3),3);
        ForcePlayerStartLocation(Player(3),3);
        SetPlayerColor(Player(3),ConvertPlayerColor(3));
        SetPlayerRacePreference(Player(3),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(3),false);
        SetPlayerController(Player(3),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(4),4);
        ForcePlayerStartLocation(Player(4),4);
        SetPlayerColor(Player(4),ConvertPlayerColor(4));
        SetPlayerRacePreference(Player(4),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(4),false);
        SetPlayerController(Player(4),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(5),5);
        ForcePlayerStartLocation(Player(5),5);
        SetPlayerColor(Player(5),ConvertPlayerColor(5));
        SetPlayerRacePreference(Player(5),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(5),false);
        SetPlayerController(Player(5),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(6),6);
        ForcePlayerStartLocation(Player(6),6);
        SetPlayerColor(Player(6),ConvertPlayerColor(6));
        SetPlayerRacePreference(Player(6),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(6),false);
        SetPlayerController(Player(6),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(7),7);
        ForcePlayerStartLocation(Player(7),7);
        SetPlayerColor(Player(7),ConvertPlayerColor(7));
        SetPlayerRacePreference(Player(7),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(7),false);
        SetPlayerController(Player(7),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(8),8);
        ForcePlayerStartLocation(Player(8),8);
        SetPlayerColor(Player(8),ConvertPlayerColor(8));
        SetPlayerRacePreference(Player(8),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(8),false);
        SetPlayerController(Player(8),MAP_CONTROL_USER);

        SetPlayerStartLocation(Player(9),9);
        ForcePlayerStartLocation(Player(9),9);
        SetPlayerColor(Player(9),ConvertPlayerColor(9));
        SetPlayerRacePreference(Player(9),RACE_PREF_HUMAN);
        SetPlayerRaceSelectable(Player(9),false);
        SetPlayerController(Player(9),MAP_CONTROL_COMPUTER);

        SetPlayerStartLocation(Player(10),10);
        ForcePlayerStartLocation(Player(10),10);
        SetPlayerColor(Player(10),ConvertPlayerColor(10));
        SetPlayerRacePreference(Player(10),RACE_PREF_UNDEAD);
        SetPlayerRaceSelectable(Player(10),false);
        SetPlayerController(Player(10),MAP_CONTROL_COMPUTER);

        SetPlayerStartLocation(Player(11),11);
        ForcePlayerStartLocation(Player(11),11);
        SetPlayerColor(Player(11),ConvertPlayerColor(11));
        SetPlayerRacePreference(Player(11),RACE_PREF_ORC);
        SetPlayerRaceSelectable(Player(11),false);
        SetPlayerController(Player(11),MAP_CONTROL_COMPUTER);
    }

    void InitCustomTeams()
    {
        SetPlayerTeam(Player(0),0);
        SetPlayerTeam(Player(1),0);
        SetPlayerTeam(Player(2),0);
        SetPlayerTeam(Player(3),0);
        SetPlayerTeam(Player(4),0);
        SetPlayerTeam(Player(5),0);
        SetPlayerTeam(Player(6),0);
        SetPlayerTeam(Player(7),0);
        SetPlayerTeam(Player(8),0);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(0),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(1),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(2),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(3),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(4),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(5),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(7),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(6),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(7),Player(8),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(0),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(1),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(2),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(3),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(4),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(5),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(6),true);
        BJ::SetPlayerAllianceStateAllyBJ(Player(8),Player(7),true);
        SetPlayerTeam(Player(9),1);
        SetPlayerTeam(Player(10),2);
        SetPlayerTeam(Player(11),3);
    }


    void CreateRegions()
    {
        rect ZONE1 = Rect(0.0, 0.0, 100.0, 100.0);
        rect ZONE2 = Rect(5000.0, 5000.0, 7500.0, 7500.0);

    }

    void InitAllyPriorities()
    {
        SetStartLocPrioCount(0,8);
        SetStartLocPrio(0,0,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,1,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,2,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,3,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,4,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(0,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(1,8);
        SetStartLocPrio(1,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,1,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,2,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,3,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,4,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(1,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(2,8);
        SetStartLocPrio(2,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,2,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,3,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,4,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(2,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(3,8);
        SetStartLocPrio(3,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,3,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,4,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(3,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(4,8);
        SetStartLocPrio(4,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,4,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(4,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(5,8);
        SetStartLocPrio(5,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,4,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,5,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(5,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(6,8);
        SetStartLocPrio(6,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,4,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,5,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,6,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(6,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(7,8);
        SetStartLocPrio(7,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,4,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,5,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,6,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(7,7,8,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(8,8);
        SetStartLocPrio(8,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,4,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,5,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,6,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(8,7,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrioCount(9,9);
        SetStartLocPrio(9,0,0,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,1,1,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,2,2,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,3,3,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,4,4,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,5,5,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,6,6,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,7,7,MAP_LOC_PRIO_HIGH);
        SetStartLocPrio(9,8,8,MAP_LOC_PRIO_HIGH);
    }

   void SpawnChoisers()
    {
        double x = -3400.0;   // -3720__-3180 = +-270 
        double y = 1000.0;    // 1318___778
        double r = 300.0;     // 360/9 = 40
        
        double xc;
        double yc;
        
        for (int i = 0; i < 9; ++i)
        {   
            xc = x + r * cos(ToRadians(i*40));
            yc = y + r * sin(ToRadians(i*40));
            if (GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING)
            {
                CreateUnit(Player(i), 'g000', xc, yc, 270);
                CreateUnit(Player(i), 'hpea', xc, yc, 270);
            }
        }

    }
    

}
