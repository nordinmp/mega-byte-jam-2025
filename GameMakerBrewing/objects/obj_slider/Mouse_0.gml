/// @description
xzero_point = mouse_x;

volume_ratio = clamp((xzero_point - (5*16)) / (64*3), 0, 1);
volume_percent = ceil(volume_ratio * 100);

switch(channel) {
	case "Main":
		audio_master_gain(volume_ratio);
	break;
}

/// show_debug_message(volume_percent);