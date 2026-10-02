script_execute(enemy_state)
if(global.in_shop_screen == false && global.in_menu == false){
	script_execute(moveSelf)//only runs stuff based on scripts
}
if(x >= 64 && x<=68 && y<=94 && y>=90){
	x = 300;//resets enemies that touch the spawn point
	y = 300;
}	
