string      themestr;
sound       theme = CreateSound("resource\\sounds\\dragonstick-miss.ogg", false, false, false, 127, 0, ""); 
sound       theme2 = CreateSound("Sound\\Interface\\QuestActivateWhat1.wav", false, false, false, 127, 0, ""); 
//sound       theme3 = "Sound\\Interface\\QuestActivateWhat1.wav";

void OnChatTest() {
    themestr = "resource\\sounds\\dragonstick-miss.ogg";
    DisplayTextToPlayer(Player(0), 0, 0, "resource\\sounds\\dwarf-laugh.wav");
    StartSound(theme);
    StartSound(theme2);
    //StartSound(theme3);
    
    blank = GetFrameByName("ResourceBarFrame", 0);
    themestr = GetFrameText(blank);
    DisplayTextToPlayer(Player(0), 0, 0, themestr);

    CreateUnitAtLoc( Player(0), 'n03D', Location(17000, 2000), 180);
    CreateUnitAtLoc( Player(0), 'n03D', Location(17000, 2000), 180);
    CreateUnitAtLoc( Player(0), 'n03D', Location(17000, 2000), 180);
    CreateUnitAtLoc( Player(0), 'n03D', Location(17000, 2000), 180);
}

void testmain() {
    trigger t = CreateTrigger();
    
    for (int i = 0; i < 9; i++) {
        TriggerRegisterPlayerChatEvent(t, Player(i), "-test", true);
    }

    // Добавляем действие, которое вызовется при событии
    TriggerAddAction(t, @OnChatTest);



    // Юниты для проверки
    
    CreateUnitAtLoc(Player(8), 'uMEm', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'Hpal', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'bbas', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'ebas', Location( 304.0, 304.0 ), 270);

    CreateUnitAtLoc(Player(0), 'hwbv', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hwsp', Location( 304.0, 304.0 ), 270);    
    CreateUnitAtLoc(Player(0), 'hwck', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hwpg', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hwrt', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hder', Location( 304.0, 304.0 ), 270);    
    CreateUnitAtLoc(Player(0), 'htch', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hegl', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hsnk', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'hwst', Location( 304.0, 304.0 ), 270);

    CreateUnitAtLoc(Player(0), 'dwmt', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'dwtr', Location( 304.0, 304.0 ), 270);
    CreateUnitAtLoc(Player(0), 'dwwf', Location( 304.0, 304.0 ), 270);


    CreateItem('I00M', 255.0, 304.0 );
    CreateItem('phea', 255.0, 304.0 );
    CreateItem('WDTS', 255.0, 304.0 );
    CreateItem('rat9', 255.0, 304.0 );
    //print(" предмет " + GetItemPlayer('I00M') + "\n");
    //print(" предмет2 " + GetItemPlayer('phea') + "\n");

    //print("Кол-во игроков = " + 12);



    int panel = BlzCreateFrame("MyPanelBackdrop", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0);
    SetFrameSize(panel, 0.2, 0.1);








}