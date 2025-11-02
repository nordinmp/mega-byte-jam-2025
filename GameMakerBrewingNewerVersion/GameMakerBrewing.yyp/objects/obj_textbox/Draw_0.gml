/// @description Draw text
draw_set_font(fnt_shantell);
draw_set_halign(fa_middle);
draw_set_valign(fa_top);

draw_set_color(c_white);

draw_text_transformed(x + (16*image_xscale)/2, y, text, xscale, yscale, rotation);