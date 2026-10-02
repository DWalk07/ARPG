// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_death(){
	dx = 0;//stop moving upon death
	dy = 0;
	if(prevState != player_death){
		death_frames = 0;
	}
	if(death_frames >= 100){//after 100 frames the obj game will destroy the dead player and make a new one.
		with(obj_game){
			instance_destroy(obj_player);
			instance_create_layer(64,96,"Instances", obj_player); //creates a new player at the place the player first spawned into the room
		}
	}
	death_frames++;
	prevState = player_death;//you can't exit the death state until a new player is made
}