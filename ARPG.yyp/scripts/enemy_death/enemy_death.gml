// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_death(){
	global.exp += 100 + 400*type;//you get exp and a drop when you kill an enemy. 500 exp when you kill the dragon(type is 1) and 100 when you kill the snake(type is 0)
	if(type == 0){
		var new_coin = instance_create_layer(x,y,"Instances",obj_collectable);
		with(new_coin){
			randomize();
			var num  = irandom_range(0,10)
	//the coin dropped is determined by rng
			if(num <=1){
				sprite_index = spr_golden_coin;
			}else if(num >1 && num <5){
				sprite_index = spr_silver_coin;
			}else{
				sprite_index = spr_bronze_coin;
			}
		}
	}else{
		var new_coin = instance_create_layer(x,y,"Instances",obj_collectable);
		with(new_coin){
			randomize();
			var num  = irandom_range(0,10)
	//the coin dropped is determined by rng
			if(num <=7){
				sprite_index = spr_golden_coin;
			}else if(num >7){
				sprite_index = spr_silver_coin;//lowest coin that can be dropped is a silver one from the dragon
			}		
		}
	}
	instance_destroy();//destroys the enemy once it has made the drop and everything else
}