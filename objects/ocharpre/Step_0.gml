scene ++


if scene = 90  instance_create_layer(x-135,185,"instances",otextlast)


if scene < 110
sprite_index = charidle

else if scene < 322
{
x = x+2
sprite_index = charrun
image_xscale = 1
}
else
room_goto_next()


if scene = 130
{
audio_play_sound(music,0,1)
alarm[0] = 10
}
