///scr_draw_statbar(x,y,decimal,text)

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_font(font_ui_small);

draw_healthbar(argument0,argument1,argument0+275,argument1-30,argument2,c_black,c_red,c_green,0,true,false);
draw_text(argument0,argument1-15,argument3);

