/// scr_blood

/*
argument0 = Impact x position
argument1 = Impact y position
argument2 = lower spawn value
argument3 = higher spawn value
*/

// Particle emitters
if (part_system_exists(obj_blood_control.part_blood_sys)) {
    part_emitter_region(obj_blood_control.part_blood_sys,obj_blood_control.part_blood_emit,argument0+5,argument0-5,argument1+5,argument1-5,ps_shape_rectangle,ps_distr_gaussian);
    part_emitter_burst(obj_blood_control.part_blood_sys,obj_blood_control.part_blood_emit, obj_blood_control.part_blood,irandom_range(7,13));
}
// Create blood on floor
spawn = irandom_range(argument2, argument3);
for (i=0; i<spawn; i++) instance_create(x+irandom_range(-25,25),y+irandom_range(-25,25),obj_blood);

