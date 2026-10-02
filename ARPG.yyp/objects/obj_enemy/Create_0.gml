enemy_health = 20; 
dragon_health = 150;
dx = 0.6;
dy = 0.6;
enemy_state = enemy_idle;
prevState = enemy_idle;
paralyzed_time = 0;
paralyzed_duration = 120;
knockback_direction = 0;
left = 0;//directions for knockback
right = 1;
down = 2;
up = 3;
knockback_frames = 0;
//if(sprite_index == spr_snake_down){
//	type = 0;
//	show_debug_message(type)
//}
//if(sprite_index == spr_dragon_idle){
//	type = 1;
//}