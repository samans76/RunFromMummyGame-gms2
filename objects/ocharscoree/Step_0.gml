i--
if image_alpha < 1.1
image_alpha = image_alpha +0.006

// movements 
if (place_meeting(x,y+1,owall)) && distance_to_object(oblock) < 20
{
	vsp = -6.5
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
image_speed = 1
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

if i < 0
{
instance_create_layer(1000,290,"instances",oblock)           
i=random_range(60,150)
}


