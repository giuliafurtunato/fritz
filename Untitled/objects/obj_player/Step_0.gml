var _h = keyboard_check(vk_right) - keyboard_check(vk_left);
var _v = keyboard_check(vk_down) - keyboard_check(vk_up);

if (!place_meeting(x + _h * move_speed, y, obj_wall)) {
	x += _h * move_speed;
}
if (!place_meeting(x, y + _v * move_speed, obj_wall)) {
	y += _v * move_speed;
}
