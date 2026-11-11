sound testSfx = nil;

void OnTestSound() {
    // 2D-звук: слышат ВСЕ игроки, вне зависимости от камеры
    SetSoundVolume(127, testSfx);
    StartSound(testSfx);
    testpoint("resource\\sounds\\dwarf-laugh.wav");
    BJ::PlaySound("Warning");
}

void InitSound() {
    // создаём ОДИН раз при инициализации
    testSfx = CreateSound("resource\\sounds\\dwarf-laugh.wav",
                            false,  // looping
                            false,  // is3D -> 2D, для всех
                            false,  // stopwhenoutofrange
                            10, 10, "");
    SetSoundChannel(testSfx, 0);
    SetSoundVolume(127, testSfx);


    trigger t = CreateTrigger();
    
    TriggerRegisterPlayerChatEvent(t, Player(0), "-testsound", true); // true = точное совпадение
    TriggerAddAction(t, OnTestSound);
}