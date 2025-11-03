/// @description

if mouse_check_button(mb_left) and hovering and dragging == false
{
	dragging = true
	diffx = x - mouse_x;
	diffy = y - mouse_y;
	
} else if mouse_check_button(mb_left) == false {
	dragging = false;
	
}

if (dragging) {
    new_x = mouse_x + diffx;
    new_y = mouse_y + diffy;

    velocity.x = new_x - x;
    velocity.y = new_y - y;

    x = new_x;
    y = new_y;
	
	angular_velocity = (velocity.x + velocity.y) * rotation_factor;
} else {
	velocity.y += 0.982;
	x += velocity.x;
	y += velocity.y;
	
	if (place_meeting(x, y, obj_wall)) {
		x -= velocity.x;
        y -= velocity.y;
		
        if (place_meeting(x + velocity.x, y, obj_wall)) {
			velocity.x = -velocity.x
			
		};
		
        if (place_meeting(x, y + velocity.y, obj_wall)) {
			velocity.y = -velocity.y;
			
		};
    }
	
	// Vesntre
	if (x < 0) {
	    x = 0;
	    velocity.x = abs(velocity.x);
	}

	// hærjer
	if (x > room_width - sprite_width) {
	    x = room_width - sprite_width;
	    velocity.x = -abs(velocity.x);
	}

	// top
	if (y < 0) {
	    y = 0;
	    velocity.y = abs(velocity.y);
	}

	// bnud
	if (y > room_height - sprite_height) {
	    y = room_height - sprite_height;
	    velocity.y = -abs(velocity.y);
	}
	
	velocity.x *= 0.982;
    velocity.y *= 0.982;
	
	angular_velocity *= angular_damping;
}

rotation_angle += angular_velocity;

//if (rotation_angle > 360) rotation_angle -= 360;
//if (rotation_angle < 0) rotation_angle += 360;

image_angle = rotation_angle;

/// it wont rotate :( maybe math is wrong????