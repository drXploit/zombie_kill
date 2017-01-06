///scr_animate

// Animate
if (hspeed!=0||vspeed!=0)image_speed = 0.16;
else {
    image_speed = 0;
    image_index = 0;
}

// Flip sprite
if (hspeed < 0) image_xscale = -1;
if (hspeed > 0) image_xscale = 1;

// Set depth
depth = -y;

