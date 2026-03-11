other.is_powered = true;
other.move_speed = 6;
instance_destroy();
with(other) { alarm[0] = 300; } // 300 frames = 5 seconds