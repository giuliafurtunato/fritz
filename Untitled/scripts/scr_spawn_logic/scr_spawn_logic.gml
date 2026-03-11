function spawn_powerup_safely() {
	var _rx = irandom_range(64, room_width - 64);
	var _ry = irandom_range(64, room_height - 64);
	while (place_meeting(_rx, _ry, obj_wall)) {
		_rx = irandom_range(64, room_width - 64);
		_ry = irandom_range(64, room_height - 64);
	}
	
	instance_create_layer(_rx, _ry, "Instances", obj_powerup);
}