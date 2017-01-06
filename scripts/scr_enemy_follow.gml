///scr_enemy_follow

if (!distracted)
{
    dis = point_distance(x, y, obj_player.x, obj_player.y);
    if (!collision_line(x,y,obj_player.x,obj_player.y,obj_wall_collision,true,true)){
        if (dis <= aggro_range) alerted = true;
        else alerted = false;
    }
    if (alerted) {
        if (dis <= attack_range) {
            speed = 0;
            sprite_index = spr_zombie1_attack;
            mask_index = spr_zombie1;
            state = scr_enemy_attack;
        }
        if (dis <= aggro_range) && (dis >= attack_range) {
             mp_potential_step(obj_player.x, obj_player.y, enemy_speed*0.75, false); 
             if (sprite_index != spr_zombie1_follow){
                 sprite_index = spr_zombie1_follow;
                 mask_index = spr_zombie1;
             }
        }
        if (dis > aggro_range) {
            speed = enemy_speed/2;
            state = scr_enemy_idle;
            alerted = false;
            sprite_index = spr_zombie1;
            mask_index = spr_zombie1;
        }
    }
    else {
        state = scr_enemy_idle;
        alerted = false;
        speed = enemy_speed/2;
        sprite_index = spr_zombie1;
        mask_index = spr_zombie1;
    }
}
else
{
    alerted = false;
    sprite_index = spr_zombie1_distracted;
    mask_index = spr_zombie1;
    speed = enemy_speed*0.75;
    state = scr_enemy_distracted;
}
