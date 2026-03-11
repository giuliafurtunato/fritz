if (can_collect) {
	can_collect = false;
	score += 1;
	powerups_collected += 1;
	move_speed = 8;
	alarm[0] = 300;
	if (instance_exists(obj_enemy)) {
		with (obj_enemy) {
			speed += 0.5;
		}
	}
	var _lay_id = layer_get_id("Background");
	var _back_id =  layer_background_get_id(_lay_id);
	
	if (powerups_collected == 5) {
		layer_background_blend(_back_id, c_blue);
	}
	
	if (powerups_collected == 10) {
		layer_background_blend(_back_id, c_purple);
	}
	var _rx = irandom_range(32, room_width - 32);
	var _ry = irandom_range(32, room_height - 32);
	instance_create_layer(_rx, _ry, "Instances", obj_powerup);
	instance_destroy(other);
}
can_collect = true;