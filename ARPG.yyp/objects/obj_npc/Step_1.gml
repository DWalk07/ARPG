/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player)<50){
	close_to_player = true;
}else{
	close_to_player = false;
}
if(!instance_exists(obj_textbox) && keyboard_check(ord("T")) && distance_to_object(obj_player)<50){
	if(sprite_index == spr_npc_idle_down){
		var newTextBox = instance_create_layer(x,y,"Instances",obj_textbox);	
		with(newTextBox){
			text = "You must be the hero that ";
			text2 = "has come to slay the big bad dragon";
		}
	}
	if(sprite_index == spr_npc_2){
		var newTextBox = instance_create_layer(x,y,"Instances",obj_textbox);	
		with(newTextBox){
			text = "You can enter other places, open chests to get weapons or potions"
			text2 = "Use WASD to move and the number keys to switch between your inventory slots";
		}
	}
	obj_player.state = player_talk;

}

