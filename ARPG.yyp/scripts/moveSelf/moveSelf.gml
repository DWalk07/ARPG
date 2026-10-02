// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveSelf(){
//if(state == player_idle || state == player_walk || enemy_state == enemy_move){
	if(place_free(x+dx,y)){
		x = x+dx;
	}else{
		while(place_free(x+sign(dx),y)){
			x = x+sign(dx);
		}
	}
	//vertical collision check
	if(place_free(x,y+dy)){
		y = y+dy;
	}else{
		while(place_free(x,y+sign(dy))){
			y = y+sign(dy);
			}
		}
	//}
}