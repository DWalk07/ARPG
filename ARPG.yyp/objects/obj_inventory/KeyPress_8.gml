var sprite = sprite_index;
	drop_direction = obj_player.direction;//finds the direction of the player and drops the item in front of the player
	if(drop_direction <=45 || drop_direction >=315){
		drop_dist_x = 30;
		drop_dist_y = 0;
	}
	if(drop_direction >=45 && drop_direction <=135){
		drop_dist_x = 0;
		drop_dist_y = -30;
	}
	if(drop_direction >=135 && drop_direction <=225){
		drop_dist_x = -30;
		drop_dist_y = 0;
	}
	if(drop_direction >=225 && drop_direction <=315){
		drop_dist_x = 0;
		drop_dist_y = 30;
	}

if(selected !=0){
	if(inventory[selected -1] != -1){
		if(inventory[selected -1] == 0){
			if(global.sword_ammount > 1){//drops the item if you have it every time but only makes the slot empty if you have no more of that item left
				global.sword_ammount --;				
			}else{
				global.sword_ammount--;
				inventory[selected -1] = -1;//selected-1 is the index for inventory since I started at selected = 0 and the first part of the inventory array corresponds to sleceted = 1
			}
			sprite = spr_sword_1;
		}
		if(inventory[selected -1] == 1){
			if(global.staff_ammount > 1){
				global.staff_ammount --;
			}else{
				global.staff_ammount--;
				inventory[selected -1] = -1;
			}
			sprite = spr_staff;
		}
		if(inventory[selected -1] == 2){
			if(global.potion_ammount > 1){
				global.potion_ammount --;
			}else{
				global.potion_ammount--;
				inventory[selected -1] = -1;
			}
			sprite = spr_potion;
		}
		
		var dropped_item = instance_create_layer(obj_player.x+drop_dist_x,obj_player.y+drop_dist_y,"Instances",obj_collectable); 
		with(dropped_item){
			sprite_index = sprite;//the item that was dropped takes the sprite of the item removed from the inventory
		}
	}
}






//if(item_array[item_pos][item_type] != item_none){
//	var type = item_array[item_pos][item_type];
//	var sprite = item_array[item_pos][item_sprite];
//	item_array[item_pos][item_amount] --;

//	var inst = instance_create_layer(obj_player.x+drop_dist_x,obj_player.y+drop_dist_y, "Instances",obj_collectable)
//	with(inst){
//	 sprite_index = sprite;
//	}
//	if(item_array[item_pos][item_amount] < 1){//makes the inventory slot empty when you drop the last of any item you have 
//		item_array[item_pos][item_type] = item_none;
//	}
//}



