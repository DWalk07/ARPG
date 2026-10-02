// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_magic_attack(){
	dx = 0;
	dy = 0;
	if(prevState != player_magic_attack){
		lightning_on_cd = true;
		alarm[1] = room_speed*2;
		e = 0;//used as the index for how many close enemies are in the array
		hit = false;
		var close_enemy = [];
		for(var i = 0; i<instance_number(obj_enemy); i++){
			//close_enemy[e] = instance_find(obj_enemy,i);//saves the instance of obj enemy
			var enemy = instance_find(obj_enemy,i);//saves the instance of obj enemy
				if(point_distance(x,y,enemy.x,enemy.y)<400){
					close_enemy[e] = enemy//saves the instance of the close enemy in an array
					e++;
			}
		}
		if(e>0){//e will only be >0 if a close enemy has been added to the array
			for(var i = 0; i<array_length(close_enemy);i++){//goes through the instance of every enemy that is close
				if(i+1 != array_length(close_enemy) && hit == false){//if the next enemy that will be checked isn't the last close one
					randomize();
					var num  = irandom_range(0,100);
					if(num <= 100/(e+1)){//chance to hit each enemy scales with the amount of close enemies
						instance_create_layer(close_enemy[i].x,close_enemy[i].y,"Instances",obj_spell)//creates the spell on top of the enemy that has been chosen by rng
						hit = true;
					}
				}else if(hit == false){
					instance_create_layer(close_enemy[e-1].x,close_enemy[e-1].y,"Instances",obj_spell)//creates the spell on top of the enemy that has been chosen by rng
				}
			}
		}
			prevState = player_magic_attack;
			state = player_idle;
	}
}