// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_walk(){

dx = lengthdir_x(moving * movementSpeed, inputDirection);//dx and dy that are determined by the player input
dy = lengthdir_y(moving * movementSpeed, inputDirection);
if(global.player_health<=0){//kills the player when health is 0 even if the player is walking
		state = player_death;
	}
if(moving==1){
	direction = inputDirection
}

if(direction <= 45 || direction >= 315){ //angles on the unit circle
	sprite_index = spr_player_walking_right;
}

if(direction >= 45 && direction <=135){ //angles on the unit circle
	sprite_index = spr_player_walking_up;
}
if(direction >=135  && direction <= 225){ //angles on the unit circle
	sprite_index = spr_player_walking_left;
}
if(direction >= 225 && direction <=315){ //angles on the unit circle
	sprite_index = spr_player_walking_down;
}
if(damageable == true){
		if(place_meeting(x+2,y,obj_enemy)||place_meeting(x-2,y,obj_enemy)|| place_meeting(x,y+2,obj_enemy))||place_meeting(x,y-2,obj_enemy){//if the enemy hit the player at all
			if(place_meeting(x+sprite_width/2,y,obj_enemy)){
				knockback_direction = left;//determines knockback direction based on where the enemy hit the player
			}else if(place_meeting(x-sprite_width/2,y,obj_enemy)){
				knockback_direction = right;
			}else if(place_meeting(x,y-sprite_height/2,obj_enemy)){
				knockback_direction = down;
			}else if(place_meeting(x,y+sprite_height/2,obj_enemy)){
				knockback_direction = up;
			}
			global.player_health -= irandom_range(5,10);//enemy does anywhere between 5 and 10 damage
			damageable = false;
			alarm[0] = room_speed*.8
			state = knockback;
		}				
	}
if(global.sword_1_equipped == true){//allows the player to execute a slash or stab attack with thier sword if they have it equipped
	if(keyboard_check_pressed(global.attack_button)){
		global.last_attack = global.stab
		state = player_attack;//sets the state so that the player actually attacks
	}else if(keyboard_check_pressed(ord("Z"))){
			global.last_attack = global.slash;
			state = player_attack;
		}
}
if(global.potion_equipped == true){
	if(keyboard_check_pressed(ord("E"))){
		if(global.player_health < (100+(global.player_health_stat*5))){//max health is (100+(global.player_health_stat*5)) so you can only use the potion if you are at max health. I could do a mana system like this so pls give me more credit
			global.player_health += 20;//increases the health of the player when they drink a potion by pressing e when they have it equipped
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
if(global.staff_equipped == true  && lightning_on_cd == false){
	if(keyboard_check_pressed(ord("Q"))){//fires a magic attack 
			state = player_magic_attack;
		}
}
if(moving == 0){
	state = player_idle;
}
prevState = player_walk;
}