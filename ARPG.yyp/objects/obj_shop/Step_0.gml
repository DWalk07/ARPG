var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
if(sprite_index == spr_sword_1_buy || sprite_index == spr_staff_buy || sprite_index == spr_potion_buy){
	if(global.in_shop_screen == false){
		instance_destroy();
	}
}else{
	x = cam_x+650;
	y = cam_y+200;
}


