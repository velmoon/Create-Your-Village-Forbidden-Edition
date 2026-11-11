////////////////////////////////////////////////////////////
/////// Прочие константы
////////////////////////////////////////////////////////////


//Сделать консту = которая будет высчитваться каждый раз в игре по кол-во игроков (дабы потом её в триггеры пихать) ыыыы

const array<string> COLOR_PLAYRS = {"|cffFF0303", "|cff0042FF", "|cff1CE6B9", 
                                    "|cff540081", "|cffFFFC01", "|cffFE8A0E", 
                                    "|cff20C000", "|cffE55BB0", "|cff959697", 
                                    "|cff7EBFF1", "|cff106246", "|cff4E2A04"};  
// Цвета игроков поочерёдна. Не забывать добавлять "|r" к концу, иначе будет шляпа =\

const float TIMER_EVENT     = 1200.0;   // Таймер ивентов
const uint8 MAX_PLAYERS     = 9;

////////////////////////////////////////////////////////////
/////// Жилы в мире
////////////////////////////////////////////////////////////

array<unit> CanMineUnits = {'uMEm', 'hpea'};
array<unit> OreVines = {'r0st', 'r0ir', 'r0cr'};

const int ORE_QUANTITY = 100; // Количество руды на карте

////////////////////////////////////////////////////////////
/////// Ресурсы
////////////////////////////////////////////////////////////

const float TIMER_UPDATING_TABLE_OF_RES = 0.1; // Скорость обновление таблицы ресурсов в секундах

array<uint16> Food     (9);
array<uint16> Moral    (9);
array<uint16> Stone    (9);
array<uint16> Iron     (9);
array<uint16> Crystal  (9);
array<uint16> Gold     (9);
array<uint16> Lumber   (9);

// Меню ресурсов

array<framehandle>  TextBoxResStroneAr    (9);
array<framehandle>  TextBoxResIronAr      (9);
array<framehandle>  TextBoxResCrystalAr   (9);
array<framehandle>  TextBoxResFoodAr      (9);
array<framehandle>  TextBoxResMoralAr     (9);
array<framehandle>  TextBoxResGoldAr      (9);
array<framehandle>  TextBoxResLumberAr    (9);

// Постройки, требующие ресурсы

array<unit> NeedStoneBuild = {'f001'};

// Юниты требующие ресурсы

array<unit> NeedStoneUnits = {'hpea'};

////////////////////////////////////////////////////////////
/////// Всё, что касается еды
////////////////////////////////////////////////////////////

const int TIMER_CONSUPTION_OF_FOOD = 120; // Скорость потребления пищи в секундах

// Юниты производящие еду

array<unit> AnimalFood = {'ashi'}; // Поочерёдна: Pig, Sheep, Chicken

// Предметы еды (арбузы, мясо...)

array<item> ItemFood = {'I00M', 'phea'};

////////////////////////////////////////////////////////////
/////// ОХОТА
////////////////////////////////////////////////////////////

const int WILD_ANIMAL_QUANTITY_AT_START = 100; // Количество спавна животных на карте со старта 
const int WILD_ANIMAL_LIMIT             = 150; // Лимит животных на карте. Т.е. если будет = или >, то спавн прекратится 


array<unit> AnimalWild = {'hwbv', 'hwsp', 'hwck', 'hwpg', 'hwrt', 'hder', 'htch', 'hegl', 'hwst','hsnk'}; // Зачем грязномассив, если есть хеш-чад-таблица?
// Поочерёдна: Дикий кабан, Дикая овца, Дикая курица, Дикая свинья, Дикий кролик, Олень, Черепаха, Сокол, Стервятник, Ящерица

array<unit> DangerWild = {'dwwf', 'dwtr', 'dwmt'};
// Волк, Тролль, Мамонт, 

array<item> WildDrop = {'WDBS', 'WDJS', 'WDSS', 'WDTS', 'WDWS'};
// Большая шкура, Шкура, Малая шкура, Шкура Тролля, Шкура волка


////////////////////////////////////////////////////////////
/////// Справочная инфа
////////////////////////////////////////////////////////////
/*
Player 0-8  = Заблудшие
Player 9    = Королевства
Player 10   = Отребье
Player 11   = Злые сущности

Player 14   = neutral hostile
Player 13   = neutral passive

Player 15   = .... хз кто, но когда атакуешь их, они не агрятся







type	min value	                max value

int8 	-128	                    127
int16 	-32,768	                    32,767
int 	-2,147,483,648	            2,147,483,647
int64 	-9,223,372,036,854,775,808	9,223,372,036,854,775,807

uint8 	0	                        255
uint16	0	                        65,535
uint 	0	                        4,294,967,295
uint64	0	                        18,446,744,073,709,551,615

type	range of values	                    smallest positive value     	maximum digits

float 	+/- 3.402823466e+38 	            1.175494351e-38 	                6
double	+/- 1.79769313486231e+308       	2.22507385850720e-308	            15
*/