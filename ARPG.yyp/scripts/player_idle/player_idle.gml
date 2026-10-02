// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle(){
	dx =0;
	dy = 0;
	if(global.player_health<=0){
		state = player_death;
	}
	if(moving == 1){
		state = player_walk;
	}else if(moving == 0){
	
	}
	if(direction<= 45 || direction>= 315){
		sprite_index = spr_player_idle_right;
	}
	if(direction>= 45 && direction<= 135){
		sprite_index = spr_player_idle_up;
	}
	if(direction>= 135 && direction<= 225){
		sprite_index = spr_player_idle_left;
	}
	if(direction>= 225 && direction<= 315){
		sprite_index = spr_player_idle_down;
	}
	if(damageable == true){
		if(place_meeting(x+2,y,obj_enemy)||place_meeting(x-2,y,obj_enemy)|| place_meeting(x,y+2,obj_enemy))||place_meeting(x,y-2,obj_enemy){
			if(place_meeting(x+sprite_width/2,y,obj_enemy)){
				knockback_direction = left;
			}else if(place_meeting(x-sprite_width/2,y,obj_enemy)){
				knockback_direction = right;
			}else if(place_meeting(x,y-sprite_height/2,obj_enemy)){
				knockback_direction = down;
			}else if(place_meeting(x,y+sprite_height/2,obj_enemy)){
				knockback_direction = up;
			}
			global.player_health -= irandom_range(5,10);
			damageable = false;
			alarm[0] = room_speed*.8
			state = knockback;
		}				
	}
	if(global.potion_equipped == true){
		if(keyboard_check_pressed(ord("E"))){
			if(global.player_health < (100+(global.player_health_stat*5))){//max health is (100+(global.player_health_stat*5)) so you can only use the potion if you are at max health. I could do a mana system like this so pls give me more credit
				global.player_health += 20;
				if(global.player_health/(100+(global.player_health_stat*5))>1){
					global.player_health = 100+(global.player_health_stat*5);
				}
				global.potion_ammount--;
				if(global.potion_ammount == 0){
					with(obj_inventory){
						var slot = inventory_search(id,item_potion) //searches the inventory array for the value 2 which is the id of the potion in the array
						inventory[slot] = -1;
						global.potion_equipped = false;
						show_debug_message("inventory"+string(inventory));
						break;
					}		
				}
			}
		}
	
	}
	if(global.sword_1_equipped == true){
		if(keyboard_check_pressed(global.attack_button)){
			global.last_attack = global.stab;
			state = player_attack;
		}else if(keyboard_check_pressed(ord("Z"))){
			global.last_attack = global.slash;
			state = player_attack;
		}
	}
	if(global.staff_equipped == true){
		if(keyboard_check_pressed(ord("Q")) && lightning_on_cd == false){
			state = player_magic_attack;
		}
	}
	if(distance_to_object(obj_chest) < 22){
		with(instance_nearest(x,y,obj_chest)){
			if(chest_index == 1 && global.chest_1_oppened == false){
				global.near_unoppened_chest = true;//used to tell the player how to open the chest if they are near a chest that isn't oppened(the game tells by matching the chest index which is different for each chest and determines what chest it is and the global variable for if that chest has been oppened or not)
			}else if(chest_index == 2 && global.chest_2_oppened == false){
				global.near_unoppened_chest = true;
			}else if(chest_index == 3 && global.chest_3_oppened == false){
				global.near_unoppened_chest = true;
			}else if(chest_index == 4 && global.chest_4_oppened == false){
				global.near_unoppened_chest = true;
			}else if(chest_index == 5 && global.chest_5_oppened == false){
				global.near_unoppened_chest = true;
			}else if(chest_index == 6 && global.chest_6_oppened == false){
				global.near_unoppened_chest = true;
			}else{
				global.near_unoppened_chest = false;
			}
		}
		//chest oppening
		if(keyboard_check_pressed(ord("E"))){
			with(instance_nearest(x,y,obj_chest)){
				if(chest_index == 1 && global.chest_1_oppened == false){
					global.chest_1_oppened = true;
					sprite_index = spr_oppened_chest;
					//chest drop
					var sword = instance_create_layer(x,y+15,"Instances",obj_collectable);//1st chest predetermined to be a sword
					sword.sprite_index = spr_sword_1;
					
				}else if(chest_index == 2 && global.chest_2_oppened == false){
					global.chest_2_oppened = true;
					sprite_index = spr_oppened_chest;
					for(var i = 0; i< 20;i+=4){//creates 5 coins from the chest
						var coins = instance_create_layer(x+i,y+15,"Instances",obj_collectable)
						var num = irandom_range(1,10);
						if(num <= 4){
							coins.sprite_index = spr_golden_coin
						}else{
							coins.sprite_index = spr_silver_coin
						}
					}
					
				}else if(chest_index == 3 && global.chest_3_oppened == false){
					global.chest_3_oppened = true;
					sprite_index = spr_oppened_chest;
					for(var i = 0; i< 20;i+=4){//creates 5 coins from the chest
						var coins = instance_create_layer(x+i,y+15,"Instances",obj_collectable)
						var num = irandom_range(1,10);
						if(num <= 4){
							coins.sprite_index = spr_golden_coin
						}else{
							coins.sprite_index = spr_silver_coin
						}
					}
					
				}else if(chest_index == 4 && global.chest_4_oppened == false){
					global.chest_4_oppened = true;
					sprite_index = spr_oppened_chest;
						var staff = instance_create_layer(x,y+15,"Instances",obj_collectable)
						staff.sprite_index = spr_staff; 

				}else if(chest_index == 5 && global.chest_5_oppened == false){
					global.chest_5_oppened = true;
					sprite_index = spr_oppened_chest;
					for(var i = 0; i< 20;i+=4){//creates 5 coins from the chest
						var coins = instance_create_layer(x+i,y+15,"Instances",obj_collectable)
						var num = irandom_range(1,10);
						if(num <= 4){
							coins.sprite_index = spr_golden_coin
						}else{
							coins.sprite_index = spr_silver_coin
						}
					}
					
				}else if(chest_index == 6 && global.chest_6_oppened == false){
					global.chest_6_oppened = true;
					sprite_index = spr_oppened_chest;
					var potion = instance_create_layer(x,y+15,"Instances",obj_collectable)	
					potion.sprite_index = spr_potion;
				}
			}
		}
	}
	prevState = player_idle;
}