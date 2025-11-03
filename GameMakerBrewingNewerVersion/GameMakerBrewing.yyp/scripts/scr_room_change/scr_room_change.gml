// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_room_change(room_target){
	
	if room_target == noone {
		show_debug_message("No Room configured");
		return;
	}
	
	room_goto(room_target);
}