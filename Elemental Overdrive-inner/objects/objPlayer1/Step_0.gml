/// @description Insert description here

if (array_length(global.gamepads) > 0)
{	
	
	var haxis = gamepad_axis_value(0, gp_axislh);
	
	
	
	
	// set water element to latestCast
	if (gamepad_button_check_pressed(0, gp_face1)) 
	{
	    latestCast = waterCast;
	}
	// set air element to latestCast
	else if (gamepad_button_check_pressed(0, gp_face2)) 
	{
	    latestCast = airCast; 
	}
	// set fire element to latestCast
	else if (gamepad_button_check_pressed(0, gp_face3)) 
	{
	    latestCast = fireCast; 
	}
	// set earth element to latestCast
	else if (gamepad_button_check_pressed(0, gp_face4)) 
	{
	    latestCast = earthCast;
	}

	// sends latest cast to cast queue
	if (latestCast != undefined && array_length(castQue) < 2)
	{
	    array_push(castQue, latestCast); 

	    latestCast = undefined; 
	}

	// clears cast queue
	if (gamepad_button_check_pressed(0, gp_shoulderl))
	{
	    castQue = array_create(0); 
	}
	
	//Casting
	if (gamepad_button_check_pressed(0, gp_shoulderr))
	{
	    // checks how many elements in que
	    switch (array_length(castQue))
	    {
			case 1: // one element
	            if (castQue[0] == waterCast) {
	                show_debug_message("water");
	            } 
	            else if (castQue[0] == airCast) {
	                show_debug_message("air");
	            }
	            else if (castQue[0] == fireCast) {
	                show_debug_message("fire");
	            }
	            else if (castQue[0] == earthCast) {
	                show_debug_message("earth");
	            }
	            break;

	        case 2: // two elements
	            
				// element store
	            var element1 = castQue[0];
	            var element2 = castQue[1];

	            // check for combo
	            if ((element1 == waterCast && element2 == waterCast)) {
	                show_debug_message("water + water");
	            } 
	            else if ((element1 == fireCast && element2 == fireCast)) {
	                show_debug_message("fire + fire");
	            } 
	            else if ((element1 == airCast && element2 == airCast)) {
	                show_debug_message("air + air");
	            } 
	            else if ((element1 == earthCast && element2 == earthCast)) 
				{
	                show_debug_message("earth + earth");
	            } 
	            else {
	                show_debug_message("unfinished combo");
	            }
	            break;

	        default:
	            castQue = array_create(0);
	            break;
	    }

	    //clear array when done
	    castQue = array_create(0); 
	}


	

	
	// Direction
	x += lengthdir_x(speed, direction);
	y += lengthdir_y(speed, direction);
	image_angle = direction - 90;


	// Player Movement

	if  gamepad_button_check(0,gp_shoulderrb) && speed < topSpeed 
	{
		speed += accel;  //Accelerate forward
	}

	if gamepad_button_check(0,gp_shoulderlb)  && speed > minSpeed
	{
		speed -= accel;  //Reverse
	}
	if haxis < 0
	{
		direction += turnSpeed;  //Turn Left
	}
	if haxis > 0
	{
		direction -= turnSpeed;  //Turn Right
	}
	
	//slow down when not forward or reversing
	if !gamepad_button_check(0,gp_shoulderrb) && !gamepad_button_check(0,gp_shoulderlb)
	{
		if speed > 0
		{
			speed -= 0.02
		}
		if speed < 0
		{
			speed += 0.02
		}
	}
	
	

}