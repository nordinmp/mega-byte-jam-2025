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

minX = x;
maxX = x + fullSize;

function startup_slider() {
    switch(channel) {
        case "Main":  volume_ratio = global.player_settings.sounds.Master; break;
        case "Music": volume_ratio = global.player_settings.sounds.Music;  break;
        case "SFX":   volume_ratio = global.player_settings.sounds.SFX;    break;
        default:      volume_ratio = 1;                                    break;
    }

    xzero_point = minX + (fullSize * volume_ratio);

    volume_percent = ceil(volume_ratio * 100);
}

function Slider() {
	if room != rm_settings { return }
	if canDrag == false { return };
	
    xzero_point = clamp(mouse_x, minX, maxX);

	volume_ratio = (xzero_point - minX) / (maxX - minX);
    volume_percent = ceil(volume_ratio * 100);

	switch(channel) {
		case "Main":
			audio_master_gain(volume_ratio);
			global.player_settings.sounds.Master = volume_ratio;
		break;
		
		case "Music":
			audio_group_set_gain(ag_music, volume_ratio);
			global.player_settings.sounds.Music = volume_ratio;
		break;
		
		case "SFX":
			audio_group_set_gain(ag_sfx, volume_ratio);
			global.player_settings.sounds.SFX = volume_ratio;
		break;
	}
}

startup_slider();

alarm[11] = 0.1*room_speed;
alarm[0] = 0.5*room_speed;