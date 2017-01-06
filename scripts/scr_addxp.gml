///scr_addxp(xp)

global.xp += argument0;
scr_textfloat(obj_player.x,obj_player.y,c_gray,"+" + string(argument0) + " XP!");

