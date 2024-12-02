/// @description Insert description here

if (array_length(global.gamepads) > 0)
{	
	
	var haxis = gamepad_axis_value(playerNumber, gp_axislh);
	var haxisr = gamepad_axis_value(playerNumber, gp_axisrh);
	var vaxisr = gamepad_axis_value(playerNumber, gp_axisrv);
	var aim = point_direction(0,0,haxisr,vaxisr) 
	
	if (speed > 0 && gamepad_button_check_pressed(playerNumber,gp_shoulderr))
	{
		momentum = speed
	}
		
	
	

	aimInstance.direction = aim
	aimInstance.x = x
	aimInstance.y = y
	aimInstance.image_angle = aimInstance.direction - 90
		
	if(haxisr == 0 && vaxisr == 0)
	{
		aim = image_angle + 90
		aimInstance.image_angle = image_angle
	}
			
		

	
	// Set elements to latestCast based on button press
	if (gamepad_button_check_pressed(playerNumber, gp_face3) && array_length(castQue) < 2) // X Button
	{
	    latestCast = waterCast; // Water
	}
	// Set earth element to latestCast
	else if (gamepad_button_check_pressed(playerNumber, gp_face4) && array_length(castQue) < 2) // Y Button
	{
	    latestCast = earthCast; // Earth
	}
	// Set fire element to latestCast
	else if (gamepad_button_check_pressed(playerNumber, gp_face2) && array_length(castQue) < 2) // B Button
	{
	    latestCast = fireCast; // Fire
	}
	// Set air element to latestCast
	else if (gamepad_button_check_pressed(playerNumber, gp_face1) && array_length(castQue) < 2) // A Button
	{
	    latestCast = airCast; // Air
	}

	// Sends latest cast to cast queue
	if (latestCast != undefined && array_length(castQue) < 2)
	{
	    array_push(castQue, latestCast); 
	    latestCast = undefined;
	    show_debug_message(array_length(castQue));
	}

	// Clears cast queue
	if (gamepad_button_check_pressed(playerNumber, gp_shoulderr)) // Right Shoulder
	{
	    castQue = array_create(0); 
	}

	// Casting
	if (gamepad_button_check_pressed(playerNumber, gp_shoulderl)) // Left Shoulder
	{
	    // Checks how many elements in queue
	    switch (array_length(castQue))
	    {
	        case 1: // One element
			
				if (castQue[0] == waterCast) 
				{
					show_debug_message("water");
					instance_create_depth(x,y,depth,objShield,
						{
							target: id,
							image_xscale: 1,
							image_yscale: 1
							
						})
		        } 
				else if (castQue[0] == airCast) 
				{
		                show_debug_message("air");
		                speed *= 2;
		                alarm_set(0, 30);
		        }
		        else if (castQue[0] == fireCast) 
				{
		           show_debug_message("fire");

					instance_create_depth(x, y, depth, objFire, 
					{	
						target: id
								
					});
		        }
		        else if (castQue[0] == earthCast) 
				{
					
				  var fwdOrBack = 0
					
				  if(vaxisr <= 0)
					{
						fwdOrBack = 1
					}
					
					//checks if you are aiming right stick forward or backward
				  if (fwdOrBack == 1)
					{
						aim = image_angle + 90
					}
				  else
					{
						aim = image_angle + 270
					}
				  
				
		          //shoot rock
		          instance_create_depth(x, y, depth, objRockSpell, 
					{
						speed: 5,
		                direction: aim
					});
		        }
				
				break;

				case 2: // Two elements
            
	            // Element store
	            var element1 = castQue[0];
	            var element2 = castQue[1];

	            // Check for combo
	            if ((element1 == waterCast && element2 == waterCast)) 
				{
	                show_debug_message("water + water");
					instance_create_depth(x,y,depth,objShield,
						{
							target: id,
							image_xscale: 1,
							image_yscale: 1
							
						})
	            } 
	            else if ((element1 == fireCast && element2 == fireCast)) 
				{
	                show_debug_message("fire + fire");
	            } 
	            else if ((element1 == airCast && element2 == airCast)) 
				{
	                show_debug_message("air + air");
					speed *= 2.5;
		            alarm_set(0, 60);
	            } 
	            else if ((element1 == earthCast && element2 == earthCast)) 
				{
	                show_debug_message("earth + earth");
					instance_create_depth(x,y,depth,objEarthquake,
						{
							target: id,
							image_xscale: 1,
							image_yscale: 1
							
						})
	            } 
	            else if (array_contains(castQue,earthCast) && array_contains(castQue,waterCast)) 
				{
	                show_debug_message("earth + water");
					
					instance_create_depth(x,y,depth,objMud,
					{
						originPlayer: id
					})
	            }
				else
           
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

	if  gamepad_button_check(playerNumber,gp_shoulderrb) && speed < topSpeed 
	{
		speed += accel;  //Accelerate forward
	}

	if gamepad_button_check(playerNumber,gp_shoulderlb)  && speed > minSpeed
	{
		speed -= accel;  //Reverse
	}
	if haxis < 0
	{
		direction += turnSpeed 
	}
	if haxis > 0
	{
		direction -= turnSpeed 
	}
	
	//slow down when not forward or reversing
	if !gamepad_button_check(playerNumber,gp_shoulderrb) && !gamepad_button_check(playerNumber,gp_shoulderlb)
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