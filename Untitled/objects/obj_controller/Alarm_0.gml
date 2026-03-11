var _rx = irandom_range(32, room_width - 32);
var _ry = irandom_range(32, room_height - 32);
instance_create_layer(_rx, _ry, "Instances", obj_powerup);
alarm[0] = room_speed * 5;