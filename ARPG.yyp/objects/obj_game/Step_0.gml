if(global.in_between_rooms == true){
	wait_frames++;
	if(wait_frames >= 1){
		wait_frames = 0;
		with(obj_player){
			x = obj_game.spawn_point_x;
			y = obj_game.spawn_point_y;
			global.in_between_rooms = false;
		}
	}
}
//level system
if(global.exp >= global.exp_needed){//you get exp for killing enemies. If that exp is more than the level cap then you go up a level and lose the exp of the exp cap
	global.stat_upg_points ++;
	global.exp -= global.exp_needed;
	global.level ++;
	global.exp_needed = global.level*10;
}
if(keyboard_check_pressed(vk_escape)||keyboard_check_pressed(ord("M"))){//escape or M to enter and exit the menu
	if(global.in_menu == false){
		global.in_menu = true;
	}else{
		global.in_menu = false;
		if(instance_number(obj_stat_add) >0){
			with(obj_stat_add){
				instance_destroy();//destroys the adder if you are not in the menu
			}
		}
	}
}
global.sword_damage = 9+global.sword_stat;
global.lightningDamage = 14+global.magic_stat;//constantly sets the total dmg variables to what they should be after scaled 

