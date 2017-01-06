///scr_fire(x,y)
spotX = argument0; 
spotY = argument1; 
 
flow = part_system_create(); 
flame = part_type_create(); 
smoke = part_type_create(); 
 
part_type_shape(flame,pt_shape_flare) // the fire 
part_type_size(flame,0.5,0.8,0.30,0) 
part_type_scale(flame,0.10,0.10) 
part_type_color3(flame,c_white,c_yellow,c_red) 
 
part_type_alpha3(flame,1,0.70,.30) 
part_type_speed(flame,0.20,.50,0,0) 
part_type_direction(flame,0,359,0,20) 
part_type_gravity(flame,0.10,90) 
part_type_orientation(flame,0,180,0,0,1)

part_type_blend(flame,1) 
part_type_life(flame,1,40) 
 
part_type_shape(smoke,pt_shape_smoke) // where there's fire, there's smoke 
part_type_size(smoke,1,1,0,0) 
part_type_scale(smoke,0.25,0.25) 
part_type_color2(smoke,c_gray, c_black) 
part_type_alpha3(smoke,0.30,0.2,0.1) 
part_type_speed(smoke,0.25,0.25,0,0) 
part_type_direction(smoke,0,359,0,0) 
part_type_gravity(smoke,0.10,90) 
part_type_orientation(smoke,0,359,0,1,1) 
 
part_type_blend(smoke,0) 
part_type_life(smoke,60,60) 
 
part_type_death(flame,1,smoke) 
 
wound = part_emitter_create(flow); 
part_system_depth(flow, -25); 
 
part_emitter_region(flow,wound,spotX+8,spotX+24,spotY+16,spotY+32,ps_shape_line ,ps_distr_gaussian);
part_emitter_stream(flow,wound,flame,1);

