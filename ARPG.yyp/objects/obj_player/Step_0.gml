/// @description Insert description here
// You can write your code in this editor


keyUp = keyboard_check(ord("W"))//movement 
keyDown = keyboard_check(ord("S"))
keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))

xInput = keyRight - keyLeft;//key left is in the negative plane and key right is positive, will determine dx. same principle for key down and key up that determines dy
yInput = keyDown - keyUp;

inputDirection = point_direction(0,0,xInput,yInput)

if(xInput == 0 && yInput == 0){
	moving = 0;
}else{
	moving = 1;	
}
if(state == player_walk){//you only add to your movement if you are walking
	dx = lengthdir_x(moving * movementSpeed, inputDirection)
	dy = lengthdir_y(moving * movementSpeed, inputDirection)
}

if(global.in_shop_screen == false && global.in_menu == false){	//you don't move when you open the shop	or menu			
	script_execute(moveSelf)
}
script_execute(state)

