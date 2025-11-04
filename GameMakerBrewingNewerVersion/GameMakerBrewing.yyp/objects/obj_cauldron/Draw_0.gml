/// @description Insert description here

if room == rm_cauldron {
	draw_sprite_stretched(spr_cauldron, 1, x, y, w * sw, h * sw);
	draw_sprite_stretched(spr_mixing_stick, 1, x + cos(angle), y + sin(angle), w * sw/3, h * sw/3);
	
} else {
	draw_sprite_stretched(spr_cauldron, 1, x, y, w, h);
	
}