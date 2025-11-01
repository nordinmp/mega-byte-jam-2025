/// @description

draw_set_color(c_white);
draw_text_transformed(x + (64*3)/2, y-8, "Master Volume: "+string(volume_percent)+"%", 0.5, 0.5, 0);

draw_sprite_stretched(spr_slider, -1, x, y, 192, 24);
draw_sprite_stretched(spr_bar, -1, xzero_point, yzero_point-2, 6, 28);