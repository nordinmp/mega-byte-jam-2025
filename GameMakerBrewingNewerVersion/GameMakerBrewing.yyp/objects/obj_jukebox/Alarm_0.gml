if audio_group_is_loaded(ag_music) {
    audio_play_sound(snd_background_music, 1, true);
} else {
    // Retry until loaded
    alarm[0] = 5;
}
