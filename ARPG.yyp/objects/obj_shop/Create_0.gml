var cam_x = camera_get_view_x(view_camera[0]);//saves the x and y values top left corner of the camera and uses that to keep the text on the screen the entire time
if(global.in_shop_screen == true){
	if(x< cam_x+275){
		sprite_index = spr_sword_1_buy;
	}
	if(x >= cam_x+275 && cam_x < 375){
		sprite_index = spr_staff_buy;
	}
	if(x >= cam_x+375 && cam_x < 475){
		sprite_index = spr_potion_buy;
	}
	if(x >= cam_x +475){
		sprite_index = spr_shop_button;
	}
}
