//this draws the hud, just a buch of things under a bunch of specific collisions 
var cam_x = camera_get_view_x(view_camera[0]);//saves the x and y values top left corner of the camera and uses that to keep the text on the screen the entire time
var cam_y = camera_get_view_y(view_camera[0]);
draw_sprite(spr_bronze_coin,0,cam_x+560,cam_y+59.2);
draw_text_color(cam_x+593,cam_y+67,string(global.coins),c_black,c_aqua,c_black,c_aqua,1);
if(global.in_menu == false){
	if(global.near_unoppened_chest == true){
		draw_text(obj_player.x,obj_player.y-20, "press 'E' to open");
	}

	if(global.sword_1_equipped == true){//draws the moves you can do with each item and the keybind for them if you have them equipped
		draw_text(cam_x+660,cam_y+315,"[X] Stab")
		draw_text(cam_x+660,cam_y+365,"[Z] Slash")
		draw_sprite(spr_move_background,0,cam_x+580,cam_y+280);
	}

	if(global.staff_equipped == true){
		draw_text(cam_x+700,cam_y+315,"[Q] Lightning Stirke")
		draw_sprite(spr_move_background,0,cam_x+580,cam_y+280);
	}
	if(global.potion_equipped == true){
		draw_text(cam_x+660,cam_y+300,"[E] drink")
		draw_sprite(spr_move_background,0,cam_x+580,cam_y+280);
	}
	draw_text(cam_x+225,cam_y+339,"1");//tells u what button to press to equip each inventory slot
	draw_text(cam_x+253,cam_y+339,"2");
	draw_text(cam_x+278,cam_y+339,"3");
	draw_text(cam_x+302,cam_y+339,"4");
	draw_text(cam_x+325,cam_y+339,"5");
	draw_sprite(spr_health_bar_under, 0, cam_x+200, cam_y+375); 
	draw_sprite_ext(spr_health_bar_over,0,cam_x+200, cam_y+375, global.player_health/(100+(global.player_health_stat*5)), 1,0,c_white,1);//draws the health bar
	draw_sprite(spr_level_under, 0, cam_x+420, cam_y+375);
	draw_sprite_ext(spr_level_over,0,cam_x+420, cam_y+375, global.exp/global.exp_needed, 1,0,c_white,1);//draws the exp bar
	draw_text(cam_x+259, cam_y+391, string(global.player_health) + "/" + string(100+(global.player_health_stat*5)))
	draw_text(cam_x+435, cam_y+392,string(global.exp)+"/"+string(global.exp_needed));
	draw_text(cam_x+585, cam_y+395,"Level "+string(global.level));
	if(instance_exists(obj_npc)){
		if(obj_npc.close_to_player == true){
			draw_text(obj_player.x-10,obj_player.y, "Press T to talk");//tells the player what button to press to talk to npcs
		}
	}
	
}else{
	draw_sprite_ext(spr_move_background,0,cam_x,cam_y,100,100,0,c_black,1)
	draw_text(cam_x+275, cam_y+50,"Controls:");
	draw_text(cam_x+290, cam_y+95,"WASD to move");//writes the controls if you are in the menu screen
	draw_text(cam_x+290, cam_y+115,"Run over Items to pick them up");
	draw_text(cam_x+290, cam_y+140,"Backspace to drop an item");
	draw_text(cam_x+290, cam_y+160,"E to drink a potion or open a chest");
	draw_text(cam_x+290, cam_y+190,"ESCAPE to open or close the menu");
	draw_text(cam_x+290, cam_y+225,"STATS:");
	draw_text(cam_x+290, cam_y+250,"Sword: "+string(global.sword_stat));
	
	if(instance_number(obj_stat_add)<2){
		instance_create_layer(cam_x+320,cam_y+250,"Instances",obj_stat_add);//creates the stat add object if only if none exist before(creates 3 and needs there to be less than two);
		instance_create_layer(cam_x+320,cam_y+270,"Instances",obj_stat_add);//allows you to increase your stats in the menu
		instance_create_layer(cam_x+320,cam_y+290,"Instances",obj_stat_add);
	}
	
	draw_text(cam_x+290, cam_y+270,"Magic: "+string(global.magic_stat));
	draw_text(cam_x+290, cam_y+290,"Health: "+string(global.player_health_stat));
	draw_text(cam_x+290, cam_y+315,"Stat points: "+string(global.stat_upg_points));
}
if(global.stat_upg_points>0){
	draw_text(cam_x+220, cam_y+350,"You have unspent skill points ");
	draw_text(cam_x+220, cam_y+375,"press m or esc to open menu ");
}
if(global.in_shop_screen == true){
	draw_sprite(spr_bronze_coin,0,cam_x+180,cam_y+280);
	draw_text(cam_x+205, cam_y+285,"30");
	draw_sprite(spr_bronze_coin,0,cam_x+280,cam_y+280);
	draw_text(cam_x+305, cam_y+285,"50");
	draw_sprite(spr_bronze_coin,0,cam_x+380,cam_y+280);
	draw_text(cam_x+405, cam_y+285,"20");
}
	
	