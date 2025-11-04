/// @description Activate
if (mode == scr_room_change) {
    script_execute(mode, room_target);
}

/// @description Activate
if (mode == scr_show_overlay) {
    script_execute(mode, data);
}

if mode == scr_quit_game {
	script_execute(mode)
}
