// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attack(){
	//update variables
	dx = 0;//can't move while attacking
	dy = 0;
	moving = 0;
	// update sprites
	if(prevState != player_attack){
			if(direction <= 45 || direction >= 315){//direction determines what sprite the player should have while attacking 
				sprite_index = spr_player_sword_attackright;
				var new_attack = instance_create_depth(x,y,-100,obj_sword);
				new_attack.direction = direction;//saved for the instance of the attack that will choose its sprite based on the player direction
				new_attack.owner = id;
			}
			if(direction >= 45 && direction <=135){ 
				sprite_index = spr_player_sword_attackup;
				var new_attack = instance_create_depth(x,y,-100,obj_sword);
				new_attack.direction = direction;
				new_attack.owner = id;
			
			}
			if(direction >=135  && direction <= 225){ 
				sprite_index = spr_player_sword_attackleft;
				var new_attack = instance_create_depth(x,y,-100,obj_sword);
				new_attack.direction = direction;
				new_attack.owner = id;
			}
			if(direction >= 225 && direction <=315){ 
				sprite_index = spr_player_sword_attackdown;
				var new_attack = instance_create_depth(x,y,-100,obj_sword);
				new_attack.direction = direction;
				new_attack.owner = id;
			}
		}
	
	//check if attack animation has finished
	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){//player stops attacking once sprite animation is finished
		state = player_idle;
	}
	prevState = player_attack;
	
}