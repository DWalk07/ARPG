if(sprite_index == spr_bronze_coin){//running over coins gives you the coins that correspond with that coin sprute
	global.coins += 1;//coins were going to be for a shop system basically identical to my platformer but I ran out of time :(
}
if(sprite_index == spr_silver_coin){
	global.coins += 5;
}
if(sprite_index == spr_golden_coin){
	global.coins += 10;
}
if(sprite_index == spr_bronze_coin || sprite_index == spr_silver_coin || sprite_index == spr_golden_coin){
	instance_destroy();//coins can't be added to the inventory and you can always have coins so it doesn't have to run through the inventory checks
}else{
	if(exist_time >= 2){
		var type = item;//saves the index of the collectable item in var type as you can use var type in both the inventory and collectable objects 
		var added = 0;
		if(inventory_search(obj_inventory,type) != -1){//checks in the inventory to see if the item that is being picked up is already there
			if(type == item_sword){//increases the amount of an item you have if you already have it when you pick it up
				global.sword_ammount++;
			}else if(type == item_staff){
				global.staff_ammount++;
			}else if(type == item_potion){
				global.potion_ammount++;
			}
			instance_destroy();//gets rid of the item before trying to add it to a new inventory slot
		}else{//adds the new item to the empty inventory slot; 
				added = inventory_add(obj_inventory,type)
				with(obj_inventory){
				if(type == item_sword){
					global.sword_ammount++;
					sprite = spr_sword_1;//tells the inventory what sprite to draw for the item that was just picked up
				}
				if(type == item_staff){
					global.staff_ammount++;
					sprite = spr_staff;
				}
				if(type == item_potion){
					global.potion_ammount++;
					sprite = spr_potion;
				}
				itemType = type;
				if(type == item_sword){
					item_amount = global.sword_ammount;//the inventory draws the ammount of the item equipped in a slot correctly because of this, you check the item type and only draw the ammount for that type in that slot
				}
				if(type == item_staff){
					item_amount = global.staff_ammount;
				}
				if(type == item_potion){
					item_amount = global.sword_ammount;
				}
					show_debug_message(obj_inventory.inventory);
					if(added == true){//since the inventory add function returns true if it adds something and false if it doesn't and this var added saved the true or false value variable you can check it to see if the item was added to the inventory 
						with(other){//only destroys the item if it was added to the inventory
							instance_destroy();
						}
					}
				//}
			}
		}	
	}
}
//}




//This was failed code and I'm not 100% sure why it failed. I followed the tutorial on game maker's website for an inventory and that led me to waste 10 hours making this. I would love if you could take a look at the code I have commented out of each section, check that over with the tutorial and find out why it didn't work

//var pos = 0;
//var type = item;
//var sprite = sprite_index;
////show_debug_message(type)

//if(exist_time >= 2){
//	with(obj_inventory){
//		while (pos < 5){
//			if(item_array[pos][item_type] == type){
//				//instance_destroy();
//				break;
//			}
//			else {
//				pos+=1;
//			}
//		}
//		if(pos > 4){//checks for an empty space if there is none of the same item in the inventory slot
//			pos = 0
//			while (pos < 5){
					
//				if(item_array[pos][item_type] == item_none){
//					break;
//				}else{
//					pos+= 1;
//				}
//			}
//		}
//		if(pos < 5){
//			var empty_slot = item_array[pos]
//			empty_slot[pos][item_type] = type;
//			empty_slot[item_sprite] = sprite;
//			empty_slot[item_amount] += 1;
//			with(other){
//				instance_destroy();
//			}
//		}
//	}
//}


