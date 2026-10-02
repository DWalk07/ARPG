if(room_tp_i != Room1){//teleports the player to a specific room that is determined by its variable room_tp_i which is different everywhere. 
	obj_game.spawn_point_x = x;
	obj_game.spawn_point_y = y+40;//spawns the player 40 pixels below the place to enter the room
	
}else{
	global.in_between_rooms = true;
}

room_goto(room_tp_i);