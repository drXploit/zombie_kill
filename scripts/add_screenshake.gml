///add_screenshake (amount, duration)

var amount = argument0;
var duration = argument1;
if (instance_exists(obj_view_control)) {
    obj_view_control.screenshake = amount;
    obj_view_control.alarm[SCREENSHAKE] = duration;
}
else show_error("The view control isn't in the room", true)

