/// scr_boss_idle

var dis = point_distance(x, y, obj_player.x, obj_player.y);

if (dis <= 600)
{
    state = scr_boss_attack;
}

// Movement speed
speed = 0.5;

// Animation
sprite_index = spr_boss_idle;
image_speed = 0.3;

// Flip sprite
if (hspeed <0) image_xscale = -1;
if (hspeed >0) image_xscale = 1;

// Change direction random
if alarm[0] = -1
{
    alarm[0] = room_speed*3;
}

