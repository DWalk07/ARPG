// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventory_search(rootobject, itemType){//root object is the object that runs the function which will always be the inventory and item type is what it searches for(-1 means no item, 0 means sword, 1 means staff, 2 means potion)
	for (var i = 0; i<5; i++){//loop checks each inventory slot and returns -1 if the slot is empty and i, which will be the item inside that slot if it is full
		if(rootobject.inventory[i] == itemType){
			return(i);
		//	break;
		}
	}
	return(-1);
}

//function inventory_remove(rootobject, itemType){
//	var slot = inventory_search(rootobject, itemType);//result of the search for an item is saved by the slot
//	if(slot != -1){
//		with(rootobject){
//			inventory[slot] = -1;
//		}
//		return true;
//	}else{
//		return false;
//	}
//}
//function inventory_add(rootobject, itemType){
//	var _slot = inventory_search(rootobject, -1);///result of the search for an empty space is saved by the slot
//	if(_slot != -1){ show_debug_message(_slot);
//		with(rootobject) inventory[_slot] = itemType; //the new item type enters the slot that was empty and goes into the inventory array
//		return true;
//	}else{
//		return false;
//	}
//}


//array constants
//#macro item_type 0
//#macro item_sprite 1
//#macro item_amount 2