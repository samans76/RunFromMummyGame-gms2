//update object position
//x += (xto - x )/1
//y += (yto - y )/1
x = xto
y = yto
//bara harekat e smooth 25 ro avaz kon smoothness avaz she

//x= clamp(x,view_w_half,room_width-view_w_half)
//y= clamp(y,view_h_half,room_height-view_h_half)
x= clamp(x,view_w_half,room_width-view_w_half)
y= clamp(y,view_h_half,room_height-view_h_half)


//update destenation
if (instance_exists(follow))
{
	xto = follow.x
	yto = follow.y
}

//update camera view
camera_set_view_pos(camera,x-view_w_half+1,y-view_h_half)



//background
if layer_exists("mountains")
layer_x("mountains",mountainsx)
if layer_exists("clouds")
layer_x("clouds",cloudsx)


