///scr_sound_set_level_time(sound, level, time ms)
//allows you to fade a sound over a set time (in ms)
sound = argument0
level = argument1
time = argument2

audio_sound_gain(sound,level / 10, time)
