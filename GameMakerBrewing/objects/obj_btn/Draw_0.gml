/// @description dispau tetx
///draw_text(x, y, type);
draw_set_font(fnt_jetbrains);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if hovering {
	draw_set_color(c_gray);
} else {
	draw_set_color(c_white);
}

draw_text_transformed(x + (16*image_xscale)/2, y + 16, type, 1, 1, 0);