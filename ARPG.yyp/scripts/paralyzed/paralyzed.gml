// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function paralyzed(){//enemy can't move if they ar paralyzed.
	dx = 0;//enemy can't move while paralyzed
	dy = 0;
	if(enemy_health <= 0){
		enemy_state = enemy_death;
	}else if(prevState != paralyzed){
		paralyzed_time = 0;//countdown for how long the enemy stays paralyzed
		instance_create_layer(x,y,"Instances",obj_effect)//creates an effect to show paralysis
	}
	if(paralyzed_time >= paralyzed_duration){//takes the enemy out of the paralyzed state
		enemy_state = enemy_idle;
	}
	paralyzed_time++;
	prevState = paralyzed;
}