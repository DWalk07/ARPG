// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function knockback(){
	
	if(prevState != knockback){
		knockback_frames = 0;
		if(knockback_direction == left){//knocks the player or enemy back in the opposite direction they were hit as the direction they were hit determines knoback direction
			dx = -5;
			dy = -dy;
		}
		if(knockback_direction == right){
			dx = 5;
			dy = -dy;
		}
		if(knockback_direction == up){
			dy = -5;
			dx = -dx;
		}
		if(knockback_direction == down){
			dy = 5;
			dx = -dx;
		}
	}
	if(knockback_direction == left || knockback_direction == right){
		dx += -dx*0.1;//slowly decreases the dx
	}
	if(knockback_direction == down || knockback_direction == up){
		dy += -dy*0.1;//slowly decreases the dy
	}
	if(knockback_frames>=35 ){
		if(object_index == obj_enemy){
			enemy_state = enemy_idle;
		}else{
			state = player_idle;
		}
	}
	if(knockback_frames >=10 && object_index == obj_player){//player can attack to get out of the knockback state early
		if(global.sword_1_equipped == true){
			if(keyboard_check_pressed(global.attack_button)){
				global.last_attack = global.stab;
				state = player_attack;
			}
		}
	}
	//if(knockback_frames>=40){
	//	state = 
	//}
	prevState = knockback;
	knockback_frames++;
}