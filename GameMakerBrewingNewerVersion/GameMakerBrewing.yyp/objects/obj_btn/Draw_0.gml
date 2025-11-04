/// @description dispau tetx
///draw_text(x, y, type);
draw_set_font(fnt_shantell);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if hovering {
	draw_set_color(c_gray);
} else {
	draw_set_color(c_white);
}



draw_sprite_stretched(spr_standard_button, 1, x, y, sprite_width, sprite_height);

draw_text_transformed(x + (sprite_width / 2), y + (sprite_height/2), type, xscale, yscale, 0);
