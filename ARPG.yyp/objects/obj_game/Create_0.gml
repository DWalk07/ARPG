global.player_alive = true;
global.attack_button = ord("X")
global.stat_upg_points = 0;
global.player_health_stat = 1;
global.magic_stat = 1;
global.sword_stat = 1;
global.sword_damage = 9+global.sword_stat;
global.lightningDamage = 14+global.magic_stat;
global.coins = 0;
global.sword_1_equipped = false;
depth = -1000;
global.in_between_rooms = false;
spawn_point_x = 0;//changed by the room transfer object and the room creation code handles where the player spawns in rooms other than the main one
spawn_point_y = 0;
wait_frames = 0;
global.chest_1_oppened = false;//global vars keep track of weather or not every chest has been opened, each chest has a seperate variable so that when you enter a room the chest that is newly created will know if it has been opened or not
global.chest_2_oppened = false;
global.chest_3_oppened = false;
global.chest_4_oppened = false;
global.chest_5_oppened = false;
global.chest_6_oppened = false;
global.near_unoppened_chest = false;
global.sword_ammount = 0;
global.staff_ammount = 0;
global.potion_ammount = 0;
global.staff_equipped = false;
global.potion_equipped = false;
global.player_health = 100;
global.in_menu = false;
global.exp = 0;
global.exp_needed = 10;
global.level = 1;
global.sword_stat = 1;
global.in_shop_screen = false;
instance_create_layer(64,96,"Instances",obj_player);

//item definitions
#macro item_sword 0
#macro item_staff 1
#macro item_potion 2
#macro item_skill 3

draw_set_font(default_font);