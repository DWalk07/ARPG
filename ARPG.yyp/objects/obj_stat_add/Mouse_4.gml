if(global.stat_upg_points >0){
	if(sprite_index == spr_sword_stat_add){//increases the stat it corresponds to when pressed.
		global.stat_upg_points --;
		global.sword_stat ++;//increases the stats of the corresponding stat while consuming a stat point
	} 
	if(sprite_index == spr_magic_stat_add){
		global.stat_upg_points --;
		global.magic_stat ++;
	} 
	if(sprite_index == spr_health_stat_add){
		global.stat_upg_points --;
		global.player_health_stat ++;
	} 
}


