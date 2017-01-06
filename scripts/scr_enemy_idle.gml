///scr_enemy_idle

if (!distracted) {
    dis = point_distance(x, y, obj_player.x, obj_player.y);
    if (dis <= aggro_range) {
      if (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall_collision,true,true)) {
        alarm[0] = -1;
        alarm[1] = -1;
        alarm[2] = alarm[2] = room_speed*5;
        speed = enemy_speed*0.75;
        sprite_index = spr_zombie1_follow;
        mask_index = spr_zombie1;
        state = scr_enemy_follow;
        alerted = true;
      }
      else {
        alarm[2] = -1;
        if (alarm[0] == -1) alarm[0] = room_speed*2;
      }
    }
    else {
        if (alarm[2] == -1) alarm[2] = room_speed*5;
        if (alarm[0] == -1) alarm[0] = room_speed*2;
    }
}
else {
    distracted = true;
    state = scr_enemy_distracted;
    sprite_index = spr_zombie1_distracted;
    mask_index = spr_zombie1;
    speed = enemy_speed*0.75;
    alerted = false;
    alarm[0] = -1;
    alarm[1] = -1;
    alarm[2] = -1;
}

