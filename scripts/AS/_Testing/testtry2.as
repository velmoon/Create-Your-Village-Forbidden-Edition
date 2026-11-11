void OnChat()
{
        // Создаём звук (путь к импортированному файлу)
        sound s = CreateSound("resource\\sounds\\dwarf-laugh.wav", false, false, false, 10, 10, "");
        
        // Настраиваем громкость (0..127) и слышим только локальному игроку
        SetSoundVolume(s, 127);
        SetSoundDistances(s, 600.0, 10000.0);
        SetSoundChannel(s, 0);
        
        // Воспроизводим звук конкретному игроку
        StartSound(s);
        
        // Автоматически освобождаем хендл после окончания
        KillSoundWhenDone(s);
}

void main()
{
    trigger trChat = CreateTrigger();

    // Регистрируем триггер на чат всех игроков (false = не точное совпадение)
    for (int i = 0; i < 9; i++)
    {
        TriggerRegisterPlayerChatEvent(trChat, Player(i), "-testsound2", true);
    }

    TriggerAddAction(trChat, OnChat());
}