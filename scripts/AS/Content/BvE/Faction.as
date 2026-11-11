enum FactionType 
{
    SCUM = 10,
    EVIL = 11
}

class FactionBvE
{
    FactionType whitchFraction;     // Который игрок. 11 - Отребье 10 - Злые Сущности
    location    MainBaseLoc;        // Место базы
    unit        MainUnitsBvE;       // Юинт быза

    uint16 Resources;               
    // Ресурсы. Каждое убийство юнита из вражеского лагеря +N. Убийство ивентовых челов ++N. Убийство юнита игрока +++N. 
    // Инком каждые X времени для подпитки. Стартовые ресы 

    //array<uint16> Resources2;
    array<unit> UnitPool;           // Какие юниты фракция может использовать

    array<int> ownedNodes;          // Список захваченных точек
    int waveTimer;                  // Таймер до следующей волны


    void spawnBase()
    {
        CreateUnitAtLoc(Player(whitchFraction), MainUnitsBvE, MainBaseLoc, 0);
    }

    
  
    
    void Update() 
    {
        waveTimer--;
        
        if (waveTimer <= 0) {
            SpawnWave();
            waveTimer = GetRandomInt(30, 60); // Случайная задержка 30-60 сек
        }
    }
    
    void SpawnGroup() 
    {
        CreateUnitAtLoc(Player(whitchFraction), UnitPool[0], MainBaseLoc, 0);
    }



}

FactionBvE Scums;
FactionBvE Evils;

void Init_BvE_Base()
{
    Scums.whitchFraction     = SCUM;
    Scums.MainBaseLoc        = Location(nMB.x, nMB.y);
    Scums.MainUnitsBvE       = 'bbas';
    Scums.Resources          = 500;
    Scums.UnitPool           ={'nrog'};
    Scums.spawnBase();

    Evils.whitchFraction    = EVIL;
    Evils.MainBaseLoc       = Location(nME.x, nME.y);
    Evils.MainUnitsBvE      = 'ebas'; 
    Evils.Resources         = 500;
    Evils.UnitPool          ={'eryb'};
    Evils.spawnBase();
}