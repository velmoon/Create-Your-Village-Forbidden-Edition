enum NodeOwner // Владелец Ноды 
{
    NEUTRAL = 0,
    BANDITS = 1,
    EVIL = 2
}


class GraphNode
{
    uint8 id;                   // Номер ноды
    bool main;                  // База ли?
    float x, y;                 // Корды её
    array<uint8> neighbors;     // С какими нодами у него есть связь

    NodeOwner owner;            // Владелец

} 

array<GraphNode> GraphNodes;
GraphNode nMB;  // База бандитов
GraphNode nME;  // База Зла
GraphNode n1;   // точки
GraphNode n2;   // Точки

void Init_Nodes()
{
    nMB.id      = 200;
    nMB.main    = true;
    nMB.x       = 3000;
    nMB.y       = -3000;
    nMB.owner   = BANDITS;
    GraphNodes.insertLast(nMB);

    nME.id      = 100;
    nME.main    = true;
    nME.x       = -3000;
    nME.y       = 3000;
    nME.owner   = EVIL;
    GraphNodes.insertLast(nME);

    n1.id      = 1;
    n1.main    = false;
    n1.x       = -1500;
    n1.y       = 1500;
    n1.owner   = NEUTRAL;
    GraphNodes.insertLast(n1);

    n2.id      = 2;
    n2.main    = false;
    n2.x       = 1500;
    n2.y       = -1500;
    n2.owner   = NEUTRAL;
    GraphNodes.insertLast(n2);

    nMB.neighbors.insertLast(n1.id);
    nME.neighbors.insertLast(n2.id);

    n1.neighbors.insertLast(nMB.id);
    n1.neighbors.insertLast(n2.id);
    n2.neighbors.insertLast(nME.id);
    n2.neighbors.insertLast(n1.id);
}