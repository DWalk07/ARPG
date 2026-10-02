if(room != room_parent){//sends the collectables off screen if they aren't in the room they were created in
	x = -100;
	y = -100;
}else{
	x = saved_x;//when the room they were made in is on screen they go onto the screen. 
	y = saved_y;
}

if(sprite_index == spr_sword_1){//same thing as the create, 
	item = item_sword;	
}
if(sprite_index == spr_staff){
	item = item_staff;	
}
if(sprite_index == spr_potion){
	item = item_potion;	
}
exist_time++;//allows the collision to only happen if the item has existed so that it has run trhough its creation code

