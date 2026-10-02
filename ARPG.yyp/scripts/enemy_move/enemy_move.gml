// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_move(){
if(global.player_alive == true){//the enemy tracks the player so it needs the player to exist to run code
		if(type == 0){
			if(x>obj_player.x+2){//goes toward the player by changing its dx based on which side of the player the enemy is on
				dx = -2;
				sprite_index = spr_snake_left;
			}else if(x<obj_player.x-2){
				dx = 2;
				sprite_index = spr_snake_right;
			}else{
				dx = 0;
			}	
			if(y>obj_player.y+2){
				dy = -2;
				sprite_index = spr_snake_up;
			}else if(y<obj_player.y-2){
				dy = 2;
				sprite_index = spr_snake_down;
			}else{
				dy = 0;
			}
		}else if(type == 1){
			if(x>obj_player.x+2){//goes toward the player by changing its dx based on which side of the player the enemy is on
				dx = -2;
				sprite_index = spr_dragon_walk_left;//sprite changes for the dragon enemy
			}else if(x<obj_player.x-2){
				dx = 2;
				sprite_index = spr_dragon_walk_right;
			}else{
				dx = 0;
			}	
			if(y>obj_player.y+2){
				dy = -2;
				sprite_index = spr_dragon_walk_up;
			}else if(y<obj_player.y-2){
				dy = 2;
				sprite_index = spr_dragon_walk_down;
			}else{
				dy = 0;
			}
		}
	if(enemy_health<=0 || dragon_health <= 0){
		enemy_state = enemy_death;
	}
	if(point_distance(x,y,obj_player.x,obj_player.y)>=200){//retruns to the idle state/ un agros when far from the player
		enemy_state = enemy_idle;
	}
	prevState = enemy_move;
	}
}