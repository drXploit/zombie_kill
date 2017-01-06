///scr_onfire_draw(alpha,offset)

if (onFire > 0)
{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,argument0);
    draw_sprite_ext(sprite_index,image_index,x+argument1,y,image_xscale,image_yscale,image_angle,c_white,argument0);
    draw_sprite_ext(sprite_index,image_index,x-argument1,y,image_xscale,image_yscale,image_angle,c_white,argument0);
}

