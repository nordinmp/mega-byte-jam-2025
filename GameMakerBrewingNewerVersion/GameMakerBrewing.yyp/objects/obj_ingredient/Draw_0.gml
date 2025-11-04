/// @description

draw_sprite(sprite, 1, x, y);
draw_set_color(c_black);

if global.overlay == "none"
{
	if hovering and not dragging {
		draw_text(x, y, text);
	}
}
