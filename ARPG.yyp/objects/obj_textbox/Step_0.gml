/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E")) && !firstFrame){//e destroys the textbox and lets you exit the dialouge
	instance_destroy();
}

firstFrame = false;