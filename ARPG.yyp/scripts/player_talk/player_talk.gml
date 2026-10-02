// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_talk(){
	dx = 0;
	dy = 0;//can't move when talking
	
	if(direction<= 45 || direction>= 315){//sets the player's sprite to idle
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
	if(instance_number(obj_textbox) == 0){// if there are no more textboxes then the player is free from the diaolouge and changes states
		state = player_idle;
	}
}