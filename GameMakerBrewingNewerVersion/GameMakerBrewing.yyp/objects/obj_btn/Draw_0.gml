/// @description dispau tetx
///draw_text(x, y, type);
draw_set_font(fnt_shantell);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

if hovering {
	draw_set_color(c_gray);
} else {
	draw_set_color(c_white);
}

draw_text_transformed(x + (16*image_xscale)/2, y + 16, type, 6, 6, 0);
draw_sprite_stretched(spr_btn, 1, x, y, w, h);