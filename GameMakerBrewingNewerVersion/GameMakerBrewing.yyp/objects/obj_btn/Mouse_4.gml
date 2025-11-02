/// @description Activate
if room_target == noone {
	show_debug_message("No Room configured");
	return;
}

switch(type) {
	case "New Game":
		room_goto(room_target);
	break;
	
	case "Settings":
		room_goto(room_target);
	break;
	
	case "Credits":
		room_goto(room_target);
	break;
	
	case "<":
		room_goto(room_target);
	break;
	
	default:
		show_debug_message("No Type configured");
	break;
}