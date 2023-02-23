global.scor += 0.3

// movements 

key_jump = keyboard_check_pressed(vk_space)


if (place_meeting(x,y+1,owall)) && (key_jump)
{
	audio_sound_pitch(jump,random_range(0.9,1.1))
	audio_play_sound(jump,0,0)
	vsp = -jumph+0.5
}
vsp = vsp + grv

//animation
if (!place_meeting(x,y+4,owall)) 
{
image_speed = 1
sprite_index = charjump
}
else 
{
sprite_index = charrun
image_speed = global.spd/3.6 //0.9-1.3
}


// vertical collision

if(place_meeting(x,y+vsp,owall)) 
{
while(!place_meeting(x,y+sign(vsp),owall)) 
{ 
	 y = y + sign(vsp)
}
 vsp = 0
}

y=y+vsp


//enemy

if global.night = 0
{

if i < 0
{
instance_create_layer(1000,292,"instances",oblock)           
i=random_range(60,170)
}
}

else
{
	if i < 0
 {
	if global.nightcounter % 2 = 0
	{
	instance_create_layer(1000,300,"instances",osnake)
	i=random_range(60,140)
	}
	if global.nightcounter % 2 = 1
  {
	if random_range(-1,1) > -0.2
	{
	instance_create_layer(1000,235,"instances",obird)  //down
	i=random_range(70,160)
	}
	else
	{
	instance_create_layer(1000,206,"instances",obird)  //up
	i=random_range(28,100)
	}
  }
 }
}

//hardness

if global.spd < 7
global.spd= global.spd + 0.0006

if resptime < 1.55
resptime = resptime +0.0001

if global.scor > 6000
i = i-resptime-0.14
else
i= i-resptime

//jumpheightcontrol

//if grv < 0.35
//grv += 0.00001

//if jumph < 8
//jumph += 0.0002

jumph = 6.9 + ((global.spd -3 ) / 1.05)  //2 bara kahesh e jump 4 ro kam kon   //start with 4

grv = 0.28 + ((global.spd - 3) / 9)  //27  started with 57
