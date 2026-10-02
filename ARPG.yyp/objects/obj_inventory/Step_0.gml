if(keyboard_check_pressed(ord("1"))){
	selected = 1;
}
if(keyboard_check_pressed(ord("2"))){
	selected = 2;
}
if(keyboard_check_pressed(ord("3"))){
	selected = 3;
}
if(keyboard_check_pressed(ord("4"))){
	selected = 4;
}
if(keyboard_check_pressed(ord("5"))){
	selected = 5;
}
if(selected != 0){
	if(inventory[selected -1] == 0){
		global.sword_1_equipped = true;
	}else{
		global.sword_1_equipped = false;
	}

	if(inventory[selected -1] == 1){
		global.staff_equipped = true;
	}else{
		global.staff_equipped = false;
	}

	if(inventory[selected -1] == 2){
		global.potion_equipped = true;
	}else{
		global.potion_equipped = false;
	}
}




