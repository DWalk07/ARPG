// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_idle(){
	dx = 0;//the enemy doesn't move and is not agro
	dy = 0;
	if(point_distance(x,y,obj_player.x,obj_player.y)<200 ){//makes the enemy agro and start following the player
		enemy_state = enemy_move;
	}
	if(enemy_health <= 0){
		enemy_state = enemy_death;//kills the enemy if they have no health
	}
}