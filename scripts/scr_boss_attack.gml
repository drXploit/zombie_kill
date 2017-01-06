/// scr_boss_attack
// Check state
var dis = point_distance(x, y, obj_player.x, obj_player.y);
if (dis >= 600) state = scr_boss_idle;

// Stand still
speed = 0;

// Attack animation
sprite_index = spr_boss_attack;
image_speed = 0.15;

// Flip sprite
if (obj_player.x < x) image_xscale = -1;
if (obj_player.x > x) image_xscale = 1;

// Start attack
if (alarm[1] = -1) {
    alarm[1] = 64;
    // Play boss pounding sound
    audio_play_sound(snd_boss_thump, 8, false);
}

