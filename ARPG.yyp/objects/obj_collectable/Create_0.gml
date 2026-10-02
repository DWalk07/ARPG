

exist_time = 0;
saved_x = x;
saved_y = y;
room_parent = room;




item = 0;//the sprite will tell the object what type it is instead of vise versa
if(sprite_index == spr_sword_1){
	item = item_sword;	
}
if(sprite_index == spr_staff){
	item = item_staff;	
}
if(sprite_index == spr_potion){
	item = item_potion;	
}
