var cam_x = camera_get_view_x(view_camera[0]);//saves the x and y values top left corner of the camera and uses that to keep the text on the screen the entire time
var cam_y = camera_get_view_y(view_camera[0]);
if(sprite_index == spr_sword_stat_add){
	x = cam_x+320//determines which sprite the stat add object has based on position relative to the camera
	y = cam_y+250
}
if(sprite_index == spr_magic_stat_add){
	x = cam_x+320
	y = cam_y+270
}
if(sprite_index = spr_health_stat_add){
	x = cam_x+320
	y = cam_y+290
}