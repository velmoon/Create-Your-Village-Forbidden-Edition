/*

ResourceBarFrame	    Родительский фрейм всей панели ресурсов.
ResourceBarGoldText	    Текстовый фрейм для отображения золота.
ResourceBarLumberText	Текстовый фрейм для отображения древесины.
ResourceBarSupplyText	Текстовый фрейм для отображения лимита (еды).
ResourceBarUpkeepText	Текстовый фрейм для отображения содержания.

SimpleInfoPanelUnitDetail	        Основной фрейм информационной панели для одиночного юнита.
SimpleInfoPanelBuildingDetail	    Основной фрейм информационной панели для здания.
SimpleInfoPanelDestructableDetail	Основной фрейм информационной панели для разрушаемого объекта.
SimpleInfoPanelItemDetail	        Основной фрейм информационной панели для предмета.
InfoPanelIconDamage (индексы 0 и 1)	Отображение информации об атаке и уроне.
InfoPanelIconArmor (индекс 2)	    Отображение информации о защите и типе брони.
InfoPanelIconRank (индекс 3)	    Отображение ранга (уровня магических улучшений).
InfoPanelIconFood (индекс 4)	    Отображение информации о пище (для зданий).
InfoPanelIconGold (индекс 5)	    Отображение информации о запасах золота в шахтах.

ConsoleUI	                Родительский фрейм для основной консоли управления.
CommandBarFrame	            Фрейм командной панели (сетка способностей/приказов).
UpperButtonBarFrame	        Родительский фрейм для верхней панели кнопок.
UpperButtonBarQuestsButton	Кнопка "Задания" (Quests) в верхней панели.
UpperButtonBarMenuButton	Кнопка "Меню" в верхней панели.
UpperButtonBarAlliesButton	Кнопка "Союзники" в верхней панели.
UpperButtonBarChatButton	Кнопка "Чат" в верхней панели.

EscMenuMainPanel	    Основная панель меню, вызываемого клавишей Esc.
QuestDialog         	Основное окно диалога заданий.
ChatDialog	            Основное окно чата.
HelpPanel	            Панель помощи (F1).
LogDialog	            Окно лога (только для одиночной игры).
AllianceDialog      	Диалог управления союзниками.
Leaderboard         	Фрейм таблицы лидеров (Leaderboard).
Multiboard	            Фрейм мультиборда (Multiboard).
TimerDialog	            Фрейм диалога таймера.

*/


framehandle blank;
framehandle blank2;

void InitResourceTable()
{
    
    framehandle ResourceTable = CreateFrame("QuestButtonBaseTemplate", GetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0);
    SetFrameSize          (ResourceTable, 0.1, 0.15);
    SetFrameAbsolutePoint (ResourceTable, 0, 0.7, 0.6); // 0.7 0.56
    SetFrameAlpha         (ResourceTable, 255);
    BlzFrameSetVisible    (ResourceTable, true);

    // Положение на таблице ресурсов
    uint StoneNumb      = 0;
    uint IronNumb       = 1;
    uint CrystalNumb    = 2;
    uint FoodNumb       = 3;
    uint MoralNumb      = 4;
    uint GoldNumb       = 5;
    uint LumberNumb     = 6;

    float shift = 0.02; // Сдвиг 

    float x = 0.71; // >>> 0.71
    float y = 0.59; // ^^^ 0.55

    for (int i = 0; i < 9; ++i)
    {

        framehandle TextBoxResStrone = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResStroneAr[i] = TextBoxResStrone;
        SetFrameAlpha         (TextBoxResStroneAr[i], 255);
        SetFrameText          (TextBoxResStroneAr[i], "Камень: " + Stone[i]);
        SetFrameAbsolutePoint (TextBoxResStroneAr[i], 0, x, (y - shift*StoneNumb));
        SetFrameSize          (TextBoxResStroneAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResStroneAr[i], false);

        framehandle TextBoxResIron = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResIronAr[i] = TextBoxResIron;
        SetFrameAlpha         (TextBoxResIronAr[i], 255);
        SetFrameText          (TextBoxResIronAr[i], "Железо: " + Iron[i]);
        SetFrameAbsolutePoint (TextBoxResIronAr[i], 0, x, (y - shift*IronNumb));
        SetFrameSize          (TextBoxResIronAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResIronAr[i], false);

        framehandle TextBoxResCrystal = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResCrystalAr[i] = TextBoxResCrystal;
        SetFrameAlpha         (TextBoxResCrystalAr[i], 255);
        SetFrameText          (TextBoxResCrystalAr[i], "Кристалы: " + Crystal[i]);
        SetFrameAbsolutePoint (TextBoxResCrystalAr[i], 0, x, (y - shift*CrystalNumb));
        SetFrameSize          (TextBoxResCrystalAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResCrystalAr[i], false);

        framehandle TextBoxResFood = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResFoodAr[i] = TextBoxResFood;
        SetFrameAlpha         (TextBoxResFoodAr[i], 255);
        SetFrameText          (TextBoxResFoodAr[i], "Пища: " + Food[i]);
        SetFrameAbsolutePoint (TextBoxResFoodAr[i], 0, x, (y - shift*FoodNumb));
        SetFrameSize          (TextBoxResFoodAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResFoodAr[i], false);

        framehandle TextBoxResMoral = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResMoralAr[i] = TextBoxResMoral;
        SetFrameAlpha         (TextBoxResMoralAr[i], 255);
        SetFrameText          (TextBoxResMoralAr[i], "Мораль: " + Moral[i]);
        SetFrameAbsolutePoint (TextBoxResMoralAr[i], 0, x, (y - shift*MoralNumb));
        SetFrameSize          (TextBoxResMoralAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResMoralAr[i], false);

        framehandle TextBoxResGold = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResGoldAr[i] = TextBoxResGold;
        SetFrameAlpha         (TextBoxResGoldAr[i], 255);
        SetFrameText          (TextBoxResGoldAr[i], "Золото: " + Gold[i]);
        SetFrameAbsolutePoint (TextBoxResGoldAr[i], 0, x, (y - shift*GoldNumb));
        SetFrameSize          (TextBoxResGoldAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResGoldAr[i], false);

        framehandle TextBoxResLumber = CreateFrameByType("TEXT", "EscMenuTextFont", ResourceTable, "", i);
        TextBoxResLumberAr[i] = TextBoxResLumber;
        SetFrameAlpha         (TextBoxResLumberAr[i], 255);
        SetFrameText          (TextBoxResLumberAr[i], "Древесина: " + Lumber[i]);
        SetFrameAbsolutePoint (TextBoxResLumberAr[i], 0, x, (y - shift*LumberNumb));
        SetFrameSize          (TextBoxResLumberAr[i], 0.15, 0.05);
        BlzFrameSetVisible    (TextBoxResLumberAr[i], false);


    }
    //ResourceTableAr = {TextBoxResStrone, TextBoxResIron, TextBoxResCrystal, TextBoxResFood, TextBoxResMoral}; // 0 - 4
    for (int i = 0; i < 9; ++i)
    {
        if (GetLocalPlayer() == Player(i))
        {
            BlzFrameSetVisible    (TextBoxResStroneAr[i],   true);
            BlzFrameSetVisible    (TextBoxResIronAr[i],     true);
            BlzFrameSetVisible    (TextBoxResCrystalAr[i],  true);
            BlzFrameSetVisible    (TextBoxResFoodAr[i],     true);
            BlzFrameSetVisible    (TextBoxResMoralAr[i],    true);
            BlzFrameSetVisible    (TextBoxResGoldAr[i],     true);
            BlzFrameSetVisible    (TextBoxResLumberAr[i],   true);

        }
    }


}

void ResourceTableUpdating()
{
    int g = 0;
    int l = 0;
    framehandle blank;
    for (int i = 0; i < 9; ++i)
    {
    blank = GetFrameByName("ResourceBarGoldText", 0);
    g = S2I(GetFrameText(blank));
    Gold[i] = g;

    blank = GetFrameByName("ResourceBarLumberText", 0);
    l = S2I(GetFrameText(blank));
    Lumber[i] = l;
    

    SetFrameText          (TextBoxResStroneAr[i],   "Камень: "            + Stone[i]);
    SetFrameText          (TextBoxResIronAr[i],     "Железо: "            + Iron[i]);
    SetFrameText          (TextBoxResCrystalAr[i],  "Кристалы: "          + Crystal[i]);
    SetFrameText          (TextBoxResFoodAr[i],     "Пища: "              + Food[i]);
    SetFrameText          (TextBoxResMoralAr[i],    "Мораль: "            + Moral[i]);
    SetFrameText          (TextBoxResGoldAr[i],     "Золото: "            + Gold[i]);
    SetFrameText          (TextBoxResLumberAr[i],   "Древесина: "         + Lumber[i]);

    }
}


void OriginMove()
{
    /*
    EnableUIAutoPosition(false);
    // *********************************** Двигаем значения золота и древесины за край экрана
    blank = GetFrameByName("ResourceBarFrame", 0);
    //BlzFrameSetVisible(blank, false);
    SetFrameAbsolutePoint (blank, 0, 1, 1);
    
    blank = GetFrameByName("UpperButtonBarFrame", 0); //



    blank = GetFrameByName("ConsoleUI", 0); //
 //   BlzFrameSetVisible(blank, false);
  //  SetFrameAbsolutePoint (blank, 0, 1, 1);
    blank2 = GetOriginFrame(ORIGIN_FRAME_GAME_UI, 0);
    SetFrameAllPoints(blank, blank2);


    blank = GetOriginFrame(ORIGIN_FRAME_WORLD_FRAME, 0);
    blank2 = GetOriginFrame(ORIGIN_FRAME_GAME_UI, 0);
    SetFrameAllPoints(blank, blank2);
   */ 
}


void NewUI()
{
    // === Контейнер всей панели ===
    //    framehandle panel = CreateSimpleFrame("SimpleFrame", GetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0);
    //
    framehandle panel = CreateFrame("QuestButtonBaseTemplate", GetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0);
    SetFrameAbsolutePoint(panel, 0, 0.4, 0.3);
    SetFrameSize(panel, 0.35, 0.24);
    //BlzFrameSetVisible    (panel, true);

    // === Фон панели ===
    framehandle backdrop = CreateFrame("BACKDROP", panel, 0, 0);
    SetFrameAllPoints(backdrop, panel);
    SetFrameTexture(backdrop, "ReplaceableTextures\\CommandButtons\\BTNHeroBlademaster.blp", 0, true);
    BlzFrameSetVisible    (backdrop, true);
    // Лучше использовать свой фон:
    // SetFrameTexture(backdrop, "ui\\panel_bg.blp", 0, true);

    // === Текст "Атака: 25 - 47" ===
    framehandle attackLabel = CreateFrame("TextFrame", panel, 0, 0);
    BlzFrameSetPoint(attackLabel, FRAMEPOINT_TOPLEFT, panel, FRAMEPOINT_TOPLEFT, 0.01, -0.01);
    SetFrameText(attackLabel, "Атака:    25 - 47");
    BlzFrameSetTextColor(attackLabel, 0xFFD0D0D0);
    BlzFrameSetVisible    (attackLabel, true);

    // === Иконка атаки ===
    framehandle attackIcon = CreateFrame("SIMPLESPRITE", panel, 0, 0);
    BlzFrameSetPoint(attackIcon, FRAMEPOINT_LEFT, attackLabel, FRAMEPOINT_LEFT, -0.015, 0);
    SetFrameSize(attackIcon, 0.025, 0.025);
    SetFrameTexture(attackIcon, "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp", 0, true);

    // === Защита ===
    framehandle defLabel = CreateFrame("TextFrame", panel, 0, 1);
    BlzFrameSetPoint(defLabel, FRAMEPOINT_TOPLEFT, attackLabel, FRAMEPOINT_BOTTOMLEFT, 0, -0.005);
    SetFrameText(defLabel, "Защита:    5");

    framehandle defIcon = CreateFrame("SIMPLESPRITE", panel, 0, 1);
    BlzFrameSetPoint(defIcon, FRAMEPOINT_LEFT, defLabel, FRAMEPOINT_LEFT, -0.015, 0);
    SetFrameSize(defIcon, 0.025, 0.025);
    SetFrameTexture(defIcon, "ReplaceableTextures\\CommandButtons\\BTNHumanArmorUpOne.blp", 0, true);

    // === Золото / Дерево ===
    framehandle goldLabel = CreateFrame("TextFrame", panel, 0, 2);
    BlzFrameSetPoint(goldLabel, FRAMEPOINT_TOPRIGHT, panel, FRAMEPOINT_TOPRIGHT, -0.01, -0.01);
    SetFrameText(goldLabel, "26");
    BlzFrameSetTextColor(goldLabel, 0xFFFFD700);

    framehandle goldIcon = CreateFrame("SIMPLESPRITE", panel, 0, 2);
    BlzFrameSetPoint(goldIcon, FRAMEPOINT_RIGHT, goldLabel, FRAMEPOINT_LEFT, -0.005, 0);
    SetFrameSize(goldIcon, 0.015, 0.015);
    SetFrameTexture(goldIcon, "ReplaceableTextures\\CommandButtons\\BTNGatherGold.blp", 0, true);

    // === Сила / Ловкость / Разум ===
    framehandle strLabel = CreateFrame("TextFrame", panel, 0, 3);
    BlzFrameSetPoint(strLabel, FRAMEPOINT_TOPLEFT, defLabel, FRAMEPOINT_BOTTOMLEFT, 0, -0.005);
    SetFrameText(strLabel, "Сила:      19");

    framehandle agiLabel = CreateFrame("TextFrame", panel, 0, 4);
    BlzFrameSetPoint(agiLabel, FRAMEPOINT_TOPLEFT, strLabel, FRAMEPOINT_BOTTOMLEFT, 0, -0.003);
    SetFrameText(agiLabel, "Ловкость:  23");

    framehandle intLabel = CreateFrame("TextFrame", panel, 0, 5);
    BlzFrameSetPoint(intLabel, FRAMEPOINT_TOPLEFT, agiLabel, FRAMEPOINT_BOTTOMLEFT, 0, -0.003);
    SetFrameText(intLabel, "Разум:     16");




    framehandle hpBar = BlzCreateFrame("SIMPLESTATUSBAR", panel, 0, 0);
    BlzFrameSetPoint(hpBar, FRAMEPOINT_BOTTOMLEFT, panel, FRAMEPOINT_BOTTOMLEFT, 0.01, 0.01);
    BlzFrameSetSize(hpBar, 0.12, 0.012);
    BlzFrameSetMinMaxValue(hpBar, 0, 575);
    BlzFrameSetValue(hpBar, 450);
    BlzFrameSetTexture(hpBar, "ui\\hp_bar_fill.blp", 0, true);
    BlzFrameSetTexture(BlzGetFrameByName("SimpleStatusBarBackdrop", 0), "ui\\hp_bar_bg.blp", 0, true);

    // Текст поверх полоски
    framehandle hpText = BlzCreateFrame("TextFrame", hpBar, 0, 0);
    BlzFrameSetAllPoints(hpText, hpBar);
    BlzFrameSetText(hpText, "450 / 575");
    BlzFrameSetTextColor(hpText, 0xFFFFFFFF);




}

void initGUI()
{
    //HideOriginFrames(false);
    //bruh2 = GetOriginFrame(ORIGIN_FRAME_RESOURCE_BAR_TEXTURE, 2);
    //BlzFrameSetVisible(bruh, false);
    
    
    //SetFrameAbsolutePoint (ORIGIN_FRAME_RESOURCE_BAR, 0, 0.71, 0.46);
    //SetFrameAllPoints(ORIGIN_FRAME_WORLD_FRAME,ORIGIN_FRAME_GAME_UI);
    //BlzFrameSetVisible(bruh2, false);

    SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_GOLD,    4242);
    SetPlayerState(Player(0), PLAYER_STATE_RESOURCE_LUMBER,  2123);  

    SetPlayerState(Player(1), PLAYER_STATE_RESOURCE_GOLD,    200);
    SetPlayerState(Player(1), PLAYER_STATE_RESOURCE_LUMBER,  200);  

    OriginMove();
    //NewUI();          // До лучших времён
}