draw_self();
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
draw_sprite(spr_empty_inventory, item_pos_index, cam_x+200, cam_y+340);
x_add = 0;
item_pos_index += .2;
for(var i = 0; i<5; i++){
	if(inventory[i] != -1){
		if(inventory[i] == 0){
			draw_sprite(spr_sword_1, 0, cam_x + 215 + x_add, cam_y+350)
			draw_text(cam_x + 225+x_add, cam_y + 359, string(global.sword_ammount))//draws the sprite and amount pf the item you have in each inventory slot, if you have an item in a slot
		}
		if(inventory[i] == 1){
			draw_sprite(spr_staff, 0, cam_x + 215 + x_add, cam_y+350)
			draw_text(cam_x + 225+x_add, cam_y + 359, string(global.staff_ammount))
		}
		if(inventory[i] == 2){
			draw_sprite(spr_potion, 0, cam_x + 215 + x_add, cam_y+350)
			draw_text(cam_x + 225+x_add, cam_y + 359, string(global.potion_ammount))
		}
	}
	x_add+=25;
}
if(selected == 1){
	draw_sprite(spr_selected_inv_slot, item_pos_index, cam_x+205, cam_y+340);//draw the blue box to indicate what in the inventory is selected
}else if(selected == 2){//the position of the box to indicate what inventory slot you're on changes based on what slot you selected
	draw_sprite(spr_selected_inv_slot, item_pos_index, cam_x+233, cam_y+340);
}else if(selected == 3){
	draw_sprite(spr_selected_inv_slot, item_pos_index, cam_x+258, cam_y+340);
}else if(selected == 4){
	draw_sprite(spr_selected_inv_slot, item_pos_index, cam_x+285, cam_y+340);
}else if(selected == 5){
	draw_sprite(spr_selected_inv_slot, item_pos_index, cam_x+310, cam_y+340);
}else{

}
//		if(inventory_search(obj_inventory,itemType)!= -1){
//			draw_sprite(sprite, 0, cam_x + 200 + x_add, cam_y+350)
//			draw_text(cam_x + 208+x_add, cam_y + 359, string(item_amount));
//		}
		
		//x_add+=25;
	




//draw_self();
//var item_x = item_pos * 22;
//x_add = 0;
//var cam_x = camera_get_view_x(view_camera[0]);
//var cam_y = camera_get_view_y(view_camera[0]);
//draw_sprite(spr_empty_inventory, item_pos_index, cam_x+200 + item_x, cam_y+350);

//item_pos_index += .2;
//	for(var i = 0; i<5; i++){
//		if(item_array[i, item_type] != item_none){
//			draw_sprite(item_array[i,item_sprite], 0, cam_x + 200 + x_add, cam_y+350)
//			draw_text(cam_x + 208+x_add, cam_y + 359, + string(item_array[i,item_amount]));
//		}
//		x_add+=25;
//	}
	