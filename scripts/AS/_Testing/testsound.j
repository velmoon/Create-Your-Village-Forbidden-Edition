globals
    sound   udg_SoundClick
    sound   udg_SoundDeath
    sound   udg_MusicMain
    sound   udg_MusicBattle
    boolean udg_SoundEnabled = true
    boolean udg_MusicEnabled = true
    real    udg_SoundVolume  = 100.0
    real    udg_MusicVolume  = 80.0
endglobals

function InitSounds takes nothing returns nothing
    //         файл, 3D,  loop, stopWhenDone, min, max, EAX
    set udg_SoundClick  = CreateSound("Sound\\Interface\\Click.wav", false, false, false, 10, 10, "DefaultEAXON")
    set udg_SoundDeath  = CreateSound("Sound\\Units\\Human\\Footman\\FootmanDeath.wav", false, false, false, 10, 10, "DefaultEAXON")
    set udg_MusicMain   = CreateSound("Sound\\Music\\mp3Music\\Human1.mp3",   true, true, true, 10, 10, "DefaultEAXON")
    set udg_MusicBattle = CreateSound("Sound\\Music\\mp3Music\\Orc1.mp3",     true, true, true, 10, 10, "DefaultEAXON")

    call SetSoundVolume(udg_SoundClick,  R2I(udg_SoundVolume))
    call SetSoundVolume(udg_SoundDeath,  R2I(udg_SoundVolume))
    call SetSoundVolume(udg_MusicMain,   R2I(udg_MusicVolume))
    call SetSoundVolume(udg_MusicBattle, R2I(udg_MusicVolume))
endfunction

function PlaySFX takes sound s returns nothing
    if udg_SoundEnabled then
        call StartSound(s)
    endif
endfunction

function PlayBGM takes sound s returns nothing
    if udg_MusicEnabled then
        call StartSound(s)
    endif
endfunction

function ToggleMusic takes boolean enabled returns nothing
    set udg_MusicEnabled = enabled
    if not enabled then
        call StopSound(udg_MusicMain, true, true)
        call StopSound(udg_MusicBattle, true, true)
    endif
endfunction