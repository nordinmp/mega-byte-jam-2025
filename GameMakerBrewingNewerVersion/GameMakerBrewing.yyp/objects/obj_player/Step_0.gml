// player movement
#region

	if mouse_check_button_pressed(mb_left)
	{
		newX = mouse_x;
		newY = mouse_y;
	}

	// get the x- and y-speed
	var _spd = 10;

	if point_distance(x, y, newX, newY) < _spd
	{
	    x = newX;
	    y = newY;
	    xSpd = 0;
	    ySpd = 0;
	}
	else
	{
	    moveDir = point_direction(x, y, newX, newY);
	    xSpd = lengthdir_x(_spd, moveDir);
	    ySpd = lengthdir_y(_spd, moveDir);
	}

	// collision
	if place_meeting(x + xSpd, y, obj_wall)
	{
	    xSpd = 0;
	}

	if place_meeting(x, y + ySpd, obj_wall)
	{
	    ySpd = 0;
	}

	// move the player
	
	x += xSpd;
	y += ySpd;

	// depth
	depth = -100;

#endregion

// sprite control
 #region

	if xSpd = 0 && ySpd = 0
	{
		image_index = 0;
	}


	centerY = y + centerYOffset;
	centerX = x + centerXOffset

#endregion
