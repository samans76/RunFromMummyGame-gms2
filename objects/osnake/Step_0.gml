x= x- global.spd
if x < -50 instance_destroy()

dly--


if distance_to_object(ochar) < atkrange*image_yscale && dly <0
{
instance_create_layer(x,y,"instances",osnakeatk)
instance_destroy()
}