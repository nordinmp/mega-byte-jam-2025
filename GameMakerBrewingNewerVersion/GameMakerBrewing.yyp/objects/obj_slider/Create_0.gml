/// @description
xzero_point = x + (16*12);
yzero_point = y;

volume_ratio = 1;
volume_percent = ceil(volume_ratio * 100);

channel = "Main";
text =  "Master Volume: ";

canDrag = false;
dragging = false;

function Slider() {
	if canDrag == false { return };
	xzero_point = mouse_x;

	volume_ratio = clamp((xzero_point - (5*16)) / (64*3), 0, 1);
	volume_percent = clamp(ceil(volume_ratio * 100), 0, 100);

	switch(channel) {
		case "Main":
			audio_master_gain(volume_ratio);
		break;
		
		case "Music":
			audio_group_set_gain(ag_music, volume_ratio);
		break;
		
		case "SFX":
			audio_group_set_gain(ag_sfx, volume_ratio);
		break;
	}
}

alarm[0] = 0.5*room_speed;