randomize();
var enemy = instance_place(x,y,obj_enemy)
if(enemy != noone && hit == false){//can only hit once
	with(enemy){
		if(type == 0){
				enemy_health -= global.lightningDamage;//damage feature and actually setting them into the knockback state
			}else if(type == 1){
				dragon_health -= global.lightningDamage;
				}
		var num = irandom_range(0,100)
		if(num > 24 - global.magic_stat/2){
			enemy_state = paralyzed;//75% chance to paralyze the enemy through changing their state. chance to paralyze scales with magic stat
		}		
	}
	hit = true;
}

