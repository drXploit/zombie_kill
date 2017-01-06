///scr_add_shadow

shade = instance_create(x, y, obj_shadow);
shade.depth = depth + 1;
shade.sprite_index = sprite_index;
shade.speed = 0;
shade.x = x;
shade.y = y;
shade.image_alpha = 0.3;
shade.image_speed = 0;
shade.image_index = image_index;
shade.image_angle = 50;
shade.image_xscale = image_xscale/2;
shade.image_yscale = image_yscale*0.9;
shade.image_blend = c_dkgray;

