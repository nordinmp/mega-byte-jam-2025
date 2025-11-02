function load_audio_groups() {
	audio_group_load(ag_music);
	audio_group_load(ag_sfx);
}

load_audio_groups()

if !audio_is_playing(snd_background_music) {
	audio_play_sound(snd_background_music, 1, true);
}