/// @description

fullSize = (16*32) /// x + fullsize
halfSize = fullSize/2 /// x + halfSize

xzero_point = x + fullSize;
yzero_point = y;

volume_ratio = 1;
volume_percent = ceil(volume_ratio * 100);

channel = "Main";
text =  "Master Volume: ";

canDrag = false;
dragging = false;

function Slider() {
	if canDrag == false { return };
	
	var minX = x;
    var maxX = x + fullSize;
    xzero_point = clamp(mouse_x, minX, maxX);

	volume_ratio = (xzero_point - minX) / (maxX - minX);
    volume_percent = ceil(volume_ratio * 100);

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