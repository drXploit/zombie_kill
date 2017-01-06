///scr_ishurt_draw(alpha,alpha2,xoffset,yoffset)
if (isHurt > 0) {
    draw_sprite_ext(sprite_index,image_index,x+argument2,y+argument3,image_xscale,image_yscale,image_angle,c_red,argument0);
    draw_sprite_ext(sprite_index,image_index,x-argument2,y+argument3,image_xscale,image_yscale,image_angle,c_red,argument0);
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_red,argument1);
}

