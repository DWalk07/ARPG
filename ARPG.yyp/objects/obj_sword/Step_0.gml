if(global.last_attack == global.stab){//sword spirte determined by the direction its faceing
	if(direction<= 45 || direction>= 315){
			sprite_index = spr_sword_1_inhand_right
			if(x == owner.x){//offset
				y+=4;
				x+=11
			}
		}
		if(direction>= 45 && direction<= 135){
			sprite_index = spr_sword_1_inhand_up;
			if(y == owner.y){
				y-=11;
			}
		}
		if(direction>= 135 && direction<= 225){
			sprite_index = spr_sword_1_inhand_left;
			if(x == owner.x){
				y+=4;
				x-=11
			}
		}
		if(direction>= 225 && direction<= 315){
			sprite_index = spr_sword_1_inhand_down;
			if(y == owner.y){
				y+=11;
			}
		}
}else{//slash attacks are the same thing just with a different sprite that has a different collision box
	if(direction<= 45 || direction>= 315){
			sprite_index = spr_sword_slash_right;
			if(x == owner.x){//offset
				y+=4;
				x+=11
			}
		}
		if(direction>= 45 && direction<= 135){
			sprite_index = spr_sword_slash_up;
			if(y == owner.y){
				y-=11;
			}
		}
		if(direction>= 135 && direction<= 225){
			sprite_index = spr_sword_slash_left;
			if(x == owner.x){
				y+=4;
				x-=11
			}
		}
		if(direction>= 225 && direction<= 315){
			sprite_index = spr_sword_slash_down;
			if(y == owner.y){
				y+=11;
			}
		}
}

if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){//destroys the sword attack after the animation is played
	instance_destroy();
}

if(hit == false){//sword collision with enemy
	var enemy_instance = instance_place(x,y,obj_enemy)//returns the instance of the enemy that the sword touched
			if(enemy_instance != noone){//if the sword touched an enemy
					with (enemy_instance){
						if(place_meeting(x+sprite_width/1.5,y,obj_sword)){//knockback direction is determined by where on the sprite the enemy is hit, and it goes in the opposite direction as if it was being pushed from where it was hit
								knockback_direction = left;
						}else if(place_meeting(x-sprite_width/1.5,y,obj_sword)){
								knockback_direction = right;
						}else if(place_meeting(x,y-sprite_height/1.5,obj_sword)){
								knockback_direction = down;
						}else if(place_meeting(x,y+sprite_height/1.5,obj_sword)){
								knockback_direction = up;
						}
							if(type == 0){
								enemy_health -= global.sword_damage;//damage feature and actually setting them into the knockback state
							}else if(type == 1){
								dragon_health -= global.sword_damage;
							}
							enemy_state = knockback;
						}
					}
			hit = true;//makes you only able to hit the enemy once with one sword swing
}