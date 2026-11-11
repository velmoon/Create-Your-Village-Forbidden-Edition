string          infogame = "";
array<string>   fi (9);               // Номер игрока = индект. Содержание = всё остальное

// ********************* COMANDS *****************************
trigger cmd_name    = CreateTrigger(); // +
trigger cmd_color   = CreateTrigger(); // +

trigger cmd_devinfo = CreateTrigger(); // 
trigger cmd_info    = CreateTrigger(); // ~
trigger cmd_fi      = CreateTrigger(); // +
trigger cmd_di      = CreateTrigger(); // 
trigger cmd_pt      = CreateTrigger(); // 

trigger cmd_kill    = CreateTrigger(); // 
trigger cmd_spect   = CreateTrigger(); //



void cmd_name_action()
{
    string name = SubString( GetEventPlayerChatString(), 6, 100 );
    SetPlayerName(GetTriggerPlayer(), name);
}
void cmd_color_action()
{
    switch(S2I(SubString(GetEventPlayerChatString(), 7, 9)))
    {
    case 1:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_RED);        break;
    case 2:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_BLUE);       break;
    case 3:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_CYAN);       break;
    case 4:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_PURPLE);     break;
    case 5:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_YELLOW);     break;
    case 6:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_ORANGE);     break;
    case 7:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_GREEN);      break;
    case 8:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_PINK);       break;
    case 9:     SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_LIGHT_GRAY); break;
    case 10:    SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_LIGHT_BLUE); break;
    case 11:    SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_AQUA);       break;
    case 12:    SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_BROWN);      break;
    case 13:    SetPlayerColor( GetTriggerPlayer(), PLAYER_COLOR_MAROON);     break; // Чёрный цвет на выходе получается.
    }
}
void cmd_kill_action()
{
    DisplayTextToPlayer(GetTriggerPlayer(), 0.0f, 0.0f, "Ну ты помер нахуй... Второго шанса не будет. Он принял Ислам");
    group allunits = CreateGroup();
    GroupEnumUnitsOfPlayer(allunits, GetTriggerPlayer(), nil);
    // Либо убивать/Убирать юнитов игрока - Либо делать их нейтралами/юнитами королевства/отребья. Мб даже прикрутить простенькую ии, чтобы именно этими юнитами отдельно управляла  
    SetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_GOLD,    0);
    SetPlayerState(GetTriggerPlayer(), PLAYER_STATE_RESOURCE_LUMBER,  0);
    // Все доп ресы свести в 0. Камень-Железо-Кристаллы-Еда
}
void cmd_info_action()
{
    DisplayTextToPlayer(GetTriggerPlayer(), 0.0, 0.0, infogame);
}
void cmd_fi_init()
{
    string bruh;

    for (uint8 i = 0; i < 9; ++i)
    {   
           fi[i] = GetPlayerName(Player(i));
    }
}
void cmd_fi_action()
{  
    string textdisplay = "";

    for (uint8 i = 0; i < MAX_PLAYERS; ++i)
    {
        textdisplay = textdisplay + COLOR_PLAYRS[i] + (i+1) + ".№" + "|r" + "(" + fi[i] + ") "+ GetPlayerName(Player(i)) +  "\n";
    }
    DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, textdisplay);
}



void InitComands()
{

    for (uint8 i = 0; i < 9; ++i)
    {
        if (GetPlayerName(Player(i)) == "Shellkeeper")
        {
            TriggerRegisterPlayerChatEvent(cmd_info,        Player(i), "-devinfo",     true);
        }
        TriggerRegisterPlayerChatEvent(cmd_info,        Player(i), "-info",     true);
        TriggerRegisterPlayerChatEvent(cmd_name,        Player(i), "-name ",    false);
        TriggerRegisterPlayerChatEvent(cmd_color,       Player(i), "-color ",   false);
        TriggerRegisterPlayerChatEvent(cmd_di,          Player(i), "-di",       true);
        TriggerRegisterPlayerChatEvent(cmd_fi,          Player(i), "-fi",       true);
        TriggerRegisterPlayerChatEvent(cmd_pt,          Player(i), "-pt",       true);
        TriggerRegisterPlayerChatEvent(cmd_spect,       Player(i), "-spect",    true);
        TriggerRegisterPlayerChatEvent(cmd_kill,        Player(i), "-kill",     true);
    }

    TriggerAddAction(cmd_info,      cmd_info_action);
    TriggerAddAction(cmd_name,      cmd_name_action);
    TriggerAddAction(cmd_color,     cmd_color_action);

    TriggerAddAction(cmd_fi,        cmd_fi_action);

    TriggerAddAction(cmd_kill,      cmd_kill_action);
    
    cmd_fi_init();
}


/*

-info   - общая инфа: Время игры в минутах, твоя профа, твоя предыстория, 
-di     - настройки игры: сложность игры, какой инком, какой режим,   
-fi     - таблица игроков. Цветной Номер (изначальный) - Ник (изначальный) - Ник (текущий) 
-pt     — Показывать что-то.. мб точки взаимодействия с городами/королевствами 

-color N — сменить цвет на цвет указанного игрока (от 1 до 13)
-name <Имя> — сменить ваше имя в игре


-cul — узнать о вашей культуре
-spect — режим зрителя
-roll — игра «орёл или решка»
-random — игра выдает вам рандомное число от 0 до 100 

// Либо через Фрейм, либо через взаимодействие через юнитов
-ally — заключить союз с каким то игроком
-net — заключить нейтралитет с каким то игроком
-war — начать войну с каким то игроком


/// КОМАНДЫ ИГРОКА \\\



-rep — узнать об отношениях с ботами

-was — стать вассалом указанного игрока (вы будете отдавать ему ресы)
-cam N или -zoom N — установить камеру на указанной высоте
-d <Анимация> — юнит воспроизводит анимацию. Например death, decay, decay flesh, spell(у юнитов с заклинаниями), channel(у некоторых юнитов с заклинаниями), work(у рабочих). Отдельно можете поискать в редакторе WorldEdit
-hc — включает «геройскую камеру» на выбранном юните
-setcam NNN NNN NNN NNN — «продвинутые» настройки геройской камеры

-sz N — установить размер юнита (в процентах), стандартный размер — 100
-pr N — узнать цены «тира торговли» (1, 2 и 3)
-as N — установить скорость анимации юнита (в процентах), стандартная 100
-hl — подсказка по системе письма
-we <Часть тела> — прикрепить к части тела юнита какую то модель. Путь к модели требуется ввести в «письмо», например ввести первое сообщение как !Abilities\Spells\Other\TalkToMe\TalkToMe.mdl , затем -we overhead
-a N — посмотреть свои достижения (1 и 2)
-q — узнать ваше задание (сюжетный режим)
-q N — узнать «радиан» квесты (1 и 2) (сюжетный режим)
-n — Включить или выключить режим обучения
-wv N — установить «процент» ресурсов, который платят вассалы (от 5 до 50)




-clear - Очищает игровой текст на экране
-tabu - Узнать правила вашей религии                // Мб сделать либо через Фрейм, либо через скилл в церкви
-ef - Узнать эффекты вашей религии                  // Мб сделать либо через Фрейм, либо через скилл в церкви

/// КОМАНДЫ ХОСТА \\\
Хост всегда красный, 1 слот ( Player(0) ) 

-kick N — кикнуть игрока с указанным номером (1 — 10)
-mt N - Установить "мирное время" на N секунд (при нём игроки не могут атаковать друг друга)
-preset N — включает указанный пресет (подробнее в соответствующей статье)
-sus - блокирует выбранному игроку возможность менять ник и цвет, возвращая старый



*/