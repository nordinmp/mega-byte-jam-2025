/// @description
fullSize = (16*12) /// x + fullsize
halfSize = fullSize/2 /// x + halfSize

if room == rm_settings {
	draw_set_color(c_white);
	draw_text_transformed(x + halfSize, y-8, text + string(volume_percent)+"%", 0.5, 0.5, 0);

	xzero_point = clamp(xzero_point, x, x + fullSize)

	draw_sprite_stretched(spr_slider, -1, x, y, 192, 24);
	draw_sprite_stretched(spr_bar, -1, xzero_point, yzero_point-2, 6, 28);
}