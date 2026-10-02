/// @description Insert description here
// You can write your code in this editor
dx = 0;
dy = 0;
//e = 0;
moving = 0;
movementSpeed = 3;
state = player_idle;
global.player_health = 100 + (global.player_health_stat * 5);
knockback_direction = 0;
left = 0;//directions for knockback
right = 1;
down = 2;
up = 3;
knockback_frames = 0;
damageable = true;
lightning_on_cd = false;
global.last_attack = -1;
global.stab = 0;
global.slash = 1;
death_frames = 0;
