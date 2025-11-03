/// @description

// Lerp rotation toward target angle
image_angle = lerp(image_angle, target_angle, rotate_speed);

// Spring simulation for "squash" bounce
spring_vel += (1 - scale_x) * spring_force;
spring_vel *= (1 - spring_damp);
scale_x += spring_vel;
scale_y = 1 / scale_x; // keeps the object volume consistent

// Apply the visual scaling
image_xscale = scale_x;
image_yscale = scale_y;

// On click → trigger new random angle + spring
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    target_angle = random_range(-25, 25);
	
	should_fart = random_range(0, 1);
	if should_fart < 0.25 {
		audio_play_sound(snd_fart, 1, false);
	}

    // Kick the spring a bit
    spring_vel = -0.5;
}
