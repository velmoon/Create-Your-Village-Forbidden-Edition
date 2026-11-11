class EventBaseRare{}         
class EventBaseWonder{}
class EventBaseGlobal{}
class EventBaseMisfortune{}

class EventBaseCommon // Дефолтные ивенты классической деревни. В основном
{
    unit            u;              // Балвканка для использования внутри класса

    array<unit>     uarray;         // Массив юнитов 
    array<uint8>    countUnit;      // Массив количества юинтов. 
    uint8           countAll;       // Общее количество юнитов
    uint8           PlayerNumber;   // Какой игрок
    
    array<unit>     groupUnits(50);     // Все юниты уходят в эту массив, аля Group API.
    int             command;        // Команда, которую они должны/или нет, сделать. Возможно будет массив команд...
    location        local;          // Локация, если таковая необходимость. Так же мб массив будет
    double          x,y;            // Коорды для народа

    string          discroption;    // Глобальное сообщение в чат

    bool            alive;          // Заготовки. Проверка на то живы ли они (для повторного запуска или нет), 
    bool            complete;       // и выполнили ли они задачу (чтобы засчитать событие и анулировать его). 
    bool            multiplay;      // Аля может ли ивент быть несколько раз


    //group       band = CreateGroup();         Через массив, ибо так, вроде как, лучше для оптимизации ресурсов
    //sound     soundaccompanying;              Потом как-нибудь...


    void doevent()
    {
        MsgForAllPlayers(discroption);
        uint8 index1 = 0;
        uint8 index2 = 0;
        for (uint8 i = 0; i < countAll; )
        {
            for (uint8 x = 0; x < countUnit[index2]; ++x)
            {
                u = CreateUnitAtLoc(Player(PlayerNumber), uarray[index2], local, 270);
                groupUnits[index1] = u;
                QueuePointOrderById(u, command, x, y);
                ++index1;
                ++i;
            }
            ++index2;
        }
        
        // *************** выдача команд этой группе
        for (uint8 i = 0; i < countAll; ++i)
        {
            QueuePointOrderById(groupUnits[i], command, x, y);
        }
    }
}


/*
Ивенты

В чём суть?
В оригинальной карте, в основном ивенты заключились в: 
    1) Спавне юнитов в RandomLocalation или заготовленных местах rect. 
    2) Есть малая часть, где юниты отправляются куда-то или рандмно шатаются по карте. 
    3) И уже третье, это когда уже что-то другое изменяется (цены, мораль (отключена)) Их раз, два и обчёлся. Вот и всё... не густо.


Ивенты в моде разделяются на:
- Common        = Основные ивенты
- Rare          = Редкие и значемые события. Появление юникальных юнитов на карте
- Global        = События основаные на ценах, репутациях с Королевствами
- Wonder        = Спавн на карте чего-то положительного для игрока или значимаого для продвижения по одной из веток развития
- Misfortune    = Противоположность Wonder 

EventBaseCommon = класс/объект, который состоит из:

- discroption       = Описания, которое будет показываться всем игрокам
- soundaccompanying = Звук, сопуствующий ивенту
- u - Юнит 
- g - Группа, в которую будут помещатся юниты.. Мб сделать через массив юнитов, а не Group API
- order - команда этой группе
- location - куда команда эта, если такавая имеется

- void doevent      = Функция, которая должна: показывать текст, издавать звук, спавнить юнитов, отправлять их куда-то зачем-то, и что-то ещё мб  
*/