// sun destroy event

if x <2 
{
	x= x-0.6
	y=y+0.3
}
if x <-35 
{
audio_play_sound(mummyvoice,0,0)
with (ochar) i = 320
with (oCamera) 
{
alarm[0] = 220
alarm[1] = 340
}
// 2 khat badi
//with (ochar )
{
//resptime = 1.1 //
//grv = 0.27
//jumph = 6.9
}
//global.spd = 3.6  //
global.night = 1
global.nightcounter++
global.nighttme = random_range(1000,1800)
layer_background_change(bkid,backnight)
instance_destroy()
}

//if x< 10
//global.night = 1