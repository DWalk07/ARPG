switch(sprite_index){
	case spr_shop_button:
	var cam_x = camera_get_view_x(view_camera[0]);//saves the x and y values top left corner of the camera and uses that to keep the text on the screen the entire time
	var cam_y = camera_get_view_y(view_camera[0]);
	if(global.in_shop_screen == false){
		global.in_shop_screen = true;
		for(var i = 0; i<301;i+=100){
			instance_create_layer(cam_x+175+i,cam_y+200,"Instances",obj_shop);
		}
		instance_destroy();
	}else{
		global.in_shop_screen = false;
		instance_create_layer(cam_x+600, cam_y+200,"Instances",obj_shop);//if you are already in the shop than it destroys all the instances before making a new one
		instance_destroy();
	}
	break;
	
	case spr_potion_buy:
	if(global.coins >= 20){
		var new_potion = instance_create_layer(obj_player.x+20,obj_player.y,"Instances",obj_collectable)//creates a potion when the potion buy ias clicked
		with(new_potion){
			sprite_index = spr_potion;
		}
		global.coins -= 20;
	}
	break;
	
	case spr_sword_1_buy:
	if(global.coins >= 30){
		var new_sword = instance_create_layer(obj_player.x+20,obj_player.y,"Instances",obj_collectable)//creates a potion when the potion buy ias clicked
		with(new_sword){
			sprite_index = spr_sword_1;
		}
		global.coins -= 30;
	}
	break;
	
	case spr_staff_buy:
	if(global.coins >= 50){
		var new_staff = instance_create_layer(obj_player.x+20,obj_player.y,"Instances",obj_collectable)//creates a potion when the potion buy ias clicked
		with(new_staff){
			sprite_index = spr_staff;
		}
		global.coins -= 50;
	}
	break;
}
