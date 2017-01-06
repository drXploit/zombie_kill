///scr_enemy_distracted

if (instance_exists(obj_flare))
{
    dis = point_distance(x, y, obj_flare.x, obj_flare.y);
    if (!collision_line(x, y, obj_flare.x, obj_flare.y, obj_wall_collision, false, true)){
        if (dis <= aggro_range*2) {
            if (dis <= attack_range) speed = 0;
            else mp_potential_step(obj_flare.x, obj_flare.y, enemy_speed*0.75, false); 
        }
        else {
            if (alarm[0] == -1) alarm[0] = room_speed*2;
            distracted = false;
            alerted = false;
            speed = enemy_speed/2;
            state = scr_enemy_idle;
            if (sprite_index != spr_zombie1){
                sprite_index = spr_zombie1;
                mask_index = spr_zombie1;
            }
        }
    }
    else {
        if (alarm[0] == -1) alarm[0] = room_speed*2;
        speed = enemy_speed/2;
        state = scr_enemy_idle;
        alerted = false;
        distracted = false;
        if (sprite_index != spr_zombie1){
            sprite_index = spr_zombie1;
            mask_index = spr_zombie1;
        }
    }
}
else {
    if (alarm[0] == -1) alarm[0] = room_speed*2;
    speed = enemy_speed/2;
    state = scr_enemy_idle;
    alerted = false;    
    if (sprite_index != spr_zombie1){
        sprite_index = spr_zombie1;
        mask_index = spr_zombie1;
    }
    distracted = false;
}
