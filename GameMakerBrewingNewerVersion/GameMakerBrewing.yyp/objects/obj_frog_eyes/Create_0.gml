/// @description Constructor
diffx = x;
diffy = y;

new_x = 0;
new_y = 0;

velocity = {x: 0, y: 0};

rotation_angle = 0; // current rotation
angular_velocity = 0; // degrees per step
angular_damping = 0.95; // slows rotation over time
rotation_factor = 0.5; // how fast it rotates when moving

name = "Frog Eyes";
hovering = false;
dragging = false;

// scales from 0 to 10
attributes = {
    // Culinary Attributes
    Slimy: 3,
    Exotic: 3,

    // Alchemical / Magical Attributes
    Toxic: 3,
    Organic: 4,
    Sticky: 2,

    // Meta Attributes
    Potency: 3,
    ShelfLife: 1,
};

text = name+"\n";
var keys = variable_struct_get_names(attributes);
for (var i = 0; i < array_length(keys); i++) {
	var key_name = keys[i];
	var val = variable_struct_get(attributes, key_name);
	if (val != 0) {
		text += key_name + ": " + string(val) + "\n";
	}
}