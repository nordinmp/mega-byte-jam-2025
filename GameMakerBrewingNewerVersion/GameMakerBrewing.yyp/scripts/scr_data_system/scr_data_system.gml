global.save_game = function() {
	var _save_array = array_create(0);
	
	/// set values
	//global.player_settings.sounds.Master = audio_get_master_gain(0);
	//global.player_settings.sounds.Music = audio_get_ga
	//global.player_settings.sounds.SFX = 1
	
	array_push(_save_array, global.player_settings);
	
	show_debug_message(_save_array);
	
	/// save values
	var _filename = "SaveData.txt";
	var _json = json_stringify(_save_array);
	var _buffer = buffer_create( string_byte_length(_json) + 1, buffer_fixed, 1 );
	buffer_write(_buffer, buffer_string, _json);
	
	buffer_save(_buffer, _filename);
	
	buffer_delete(_buffer);
}

global.load_game = function() {
	var _filename = "SaveData.txt";
	if !file_exists(_filename) exit
	
	var _buffer = buffer_load(_filename);
	var _json = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _load_array = json_parse(_json);
	
	global.player_settings = array_get(_load_array, 0);
	
	audio_master_gain(global.player_settings.sounds.Master);
	audio_group_set_gain(ag_music ,global.player_settings.sounds.Music);
	audio_group_set_gain(ag_sfx ,global.player_settings.sounds.SFX);
}