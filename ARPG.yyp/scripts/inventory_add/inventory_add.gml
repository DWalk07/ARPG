// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_add(rootobject, itemType){
	var _slot = inventory_search(rootobject, -1);///result of the search for an empty space is saved by the slot
	if(_slot != -1){ 
		with(rootobject) inventory[_slot] = itemType; //the new item type enters the slot that was empty and goes into the inventory array
		return true;
	}else{
		return false;//will return false if nothing was added and true if something was, so 
	}
}
