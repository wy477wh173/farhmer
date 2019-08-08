///scr_sound_play_level(sound,volume/10,smart)

sound = argument0
level = argument1 * .1
smart = argument2

if(smart = 1)
    {
    if(!audio_is_playing(sound))
        {
        audio_play_sound(sound,10,0)
        audio_sound_gain(sound,level,0)
        }
    }
    
if(smart = 0)
    {
    audio_play_sound(sound,10,0)
    audio_sound_gain(sound,level,0)
    }

