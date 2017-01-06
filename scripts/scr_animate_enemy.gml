/// scr_animate_enemy
if (instance_exists(obj_flare)) {
        var f = point_distance(x,y,obj_flare.x,obj_flare.y);
        var c = collision_line(x,y,obj_flare.x,obj_flare.y,obj_wall_collision,false,true);
        if (f <= aggro_range) && (!c) {
            image_speed = 0.6;
            alerted = false;
            distracted = true;
        }
        else if (f <= aggro_range) && (c) {
            distracted = true;
            alerted = false;
            speed = 0;
        }
        else distracted = false;
}
else distracted = false;
if (x != xprevious) || (y != yprevious) image_speed = 0.16;
else {
     if (state == scr_enemy_attack) image_speed = 0.1;    
     else {
         image_speed = 0;
         image_index = 0;    
     }
}
// Flip sprite
if (hspeed<0)&&(image_xscale>0)image_xscale *= -1; //(going L) face L if face R
else if (hspeed>0)&&(image_xscale<0)image_xscale *= -1;//(going R) face R if face L
else if (hspeed==0){
    if (alerted){              // if alerted, always look at player
       var hSZD = point_direction(x,y,obj_player.x,obj_player.y);
       if ((hSZD >= 90) && (hSZD < 270)) && (image_xscale > 0) image_xscale *= -1;   //L-face L if face R
       else if ((hSZD < 90) || (hSZD >= 270)) && (image_xscale < 0) image_xscale *= -1;// R-face R if face L
    }
    else {           // if NOT alerted, look in direction of travel
        if ((direction>=90)&&(direction<270))&&(image_xscale>0)image_xscale *= -1; //L-face L if face R
        else if ((direction<90)||(direction>=270))&&(image_xscale<0)image_xscale*=-1; //R-face R if face L
    }
}

// Set depth
depth = -y;

