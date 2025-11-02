/// @description

if room == rm_settings {
	draw_set_color(c_white);
	draw_text_transformed(x + halfSize, y-64, text + string(volume_percent)+"%", 3, 3, 0);
	
	xzero_point = clamp(xzero_point, x, x + fullSize)

	draw_sprite_stretched(spr_slider, -1, x, y, fullSize, 16*5);
	draw_sprite_stretched(spr_bar, -1, xzero_point, yzero_point-8, 16, 16*6);
}