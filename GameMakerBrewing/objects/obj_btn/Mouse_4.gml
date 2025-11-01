/// @description Activate

switch(type) {
	case "New Game":
		show_debug_message(type);
	break;
	
	default:
		show_debug_message("No Type configured");
}