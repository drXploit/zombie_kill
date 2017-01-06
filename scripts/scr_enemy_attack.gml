/// scr_enemy_attack

if (!distracted) {
    dis = point_distance(x, y, obj_player.x, obj_player.y);
    if (dis > attack_range) {
        if (dis > aggro_range) {
            sprite_index = spr_zombie1;
            mask_index = spr_zombie1;
            state = scr_enemy_idle;
            speed = enemy_speed/2;
            alerted = false;
        }
        else {
            sprite_index = spr_zombie1_follow;
            mask_index = spr_zombie1;
            state = scr_enemy_follow;
            speed = enemy_speed*0.75;
            alerted = true;
        }
    }
    else {
        image_speed = 0.16;
        if (alarm[1] == -1) {
            speed = 0;
            if (!global.hit) instance_create(0, 0, obj_screen_flash);
            obj_player.isHurt = room_speed/2;
            global.hp -= damage;
            alarm[1] = room_speed/2;
            // Play grunt pain sound
            audio_play_sound(snd_pain_grunt, 8, false);
        }
    }
}
else {
    speed = enemy_speed*0.75;
    sprite_index = spr_zombie1_distracted;
    mask_index = spr_zombie1;
    state = scr_enemy_distracted;
    alerted = false;
}

