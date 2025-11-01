/// @description Activate
if room_target == noone {
	show_debug_message("No Room configured");
	return;
}
switch(type) {
	case "New Game":
		show_debug_message(type);
	break;
	
	default:
		show_debug_message("No Type configured");
}

room_goto(room_target);