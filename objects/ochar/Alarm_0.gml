/// @description sound
if place_meeting(x,y+1,owall)
{
audio_stop_sound(jump)
audio_sound_pitch(run,random_range(0.96,1.03))
audio_play_sound(run,0,0)
}

alarm[0] = 42 - global.spd*5 //20
