if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed){//destroys itself once the animation is complete
	instance_destroy();
}