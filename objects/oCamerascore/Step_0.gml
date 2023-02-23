//update object position
//x += (xto - x )/25
//y += (yto - y )/25
//bara harekat e smooth 25 ro avaz kon smoothness avaz she

//x= clamp(x,view_w_half,room_width-view_w_half)
//y= clamp(y,view_h_half,room_height-view_h_half)


//update destenation
//if (instance_exists(follow))
//{
//	xto = follow.x
//	yto = follow.y
//}

//update camera view
//camera_set_view_pos(camera,x-view_w_half,y-view_h_half)

//slowdown after night
//if slowspeed = 1
//{
//	with (ochar )resptime -= 0.0012
//	global.spd -= 0.008
//}

global.nighttme--

if global.nighttme == -1
instance_create_layer(891,89,"sunlayer",osun)



if layer_exists("mountains")
layer_x("mountains",mountainsx)

if layer_exists("clouds")
layer_x("clouds",cloudsx)

if layer_exists("ground")
layer_x("ground",groundx)

groundx -= global.spd
cloudsx -= global.spd/100
//mountainsx -= global.spd/15


//sun
