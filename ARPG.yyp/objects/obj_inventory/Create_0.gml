#macro inventory_slots 5
inventory = array_create(inventory_slots, -1)
randomize();
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
added = false;
selected = 0;







//randomize();
//draw_set_halign(fa_right);
//draw_set_valign(fa_bottom);

//item_pos = 0;
item_pos_index = 0;
//item_array = array_create(5,[],[],[],[],[])

//for(var i = 0; i < 5; i++){
//	item_array[i][item_type] = item_none;
//	item_array[i][item_sprite] = -1
//	item_array[i][item_amount] = 0;
//	show_debug_message(item_array)
//}
drop_direction = 0;
drop_dist_x = 25;
drop_dist_y = 25;
x_add = 0;
sprite = 0;
item_amount = 0;
itemType = 0;


