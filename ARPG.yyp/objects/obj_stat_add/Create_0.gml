var cam_y = camera_get_view_y(view_camera[0]);//finds the top y value of the viewport
if(y <= cam_y+260){//sets the sprite for the obj stat add based on position so that they can be next to the text that corresponds with it
	sprite_index = spr_sword_stat_add;
}else if(y > cam_y+260 && y<=cam_y+280){
	sprite_index = spr_magic_stat_add;
}else if(y >= cam_y+281){
	sprite_index = spr_health_stat_add;
}


