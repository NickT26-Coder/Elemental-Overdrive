/// @description Insert description here

if (array_length(global.gamepads) > 0)
{	
	
	var haxis = gamepad_axis_value(playerNumber, gp_axislh);
	var haxisr = gamepad_axis_value(playerNumber, gp_axisrh);
	var vaxisr = gamepad_axis_value(playerNumber, gp_axisrv);
	var aim = point_direction(0,0,haxisr,vaxisr) 
	

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
	if (gamepad_button_check_pressed(playerNumber, gp_shoulderl) && stun == false) // Left Shoulder
	{
	    // Checks how many elements in queue
	    switch (array_length(castQue))
	    {
	        case 1: // One element
			
				if (castQue[0] == waterCast && waterMana >= 2 ) 
				{
					show_debug_message("water");
					var water =instance_create_depth(x,y,depth,objShield,
						{
							image_xscale: 1,
							image_yscale: 1
							
						})
						
						water.origin = id
						immune = true
						stunImmune = true
						alarm[1] = 180
						shieldOn = true
					
		        }
				else if (castQue[0] == waterCast )
				{
					scrOOOM()
				}
				else if (castQue[0] == airCast && airMana >= 2 ) 
				{
		                show_debug_message("air");
						//Creates smoke boost effect
						var boost = instance_create_depth(
							x - lengthdir_x(40, direction+30),
							y - lengthdir_y(40, direction+30), 
							depth + 1, 
							objDash
						);
						boost.sprite_index = spr_smallBoost;
						boost.image_angle = image_angle;
		                speed *= 2;
		                alarm_set(0, 30);
						dashOver = true
						
		        }
				else if (castQue[0] == airCast)
				{
					scrOOOM()
				}
				
		        else if (castQue[0] == fireCast && fireMana >= 1) 
				{
		           show_debug_message("fire");

					var fire = instance_create_depth(x, y, depth, objFire)
					fire.origin = id;
		        }
				else if (castQue[0] == fireCast)
				{
					scrOOOM()
				}
		        else if (castQue[0] == earthCast && earthMana >= 1) 
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
		         var rock = instance_create_depth(x, y, depth, objRockSpell, 
					{
						speed: 5 + speed ,
		                direction: aim
					});
					rock.origin = id
		        }
				else if (castQue[0] == earthCast)
				{
					scrOOOM()
				}
				
				break;

				case 2: // Two elements
            
	            // Element store
	            var element1 = castQue[0];
	            var element2 = castQue[1];

	            // Check for combo
	            if ((element1 == waterCast && element2 == waterCast && waterMana >= 0)) 
				{
	                show_debug_message("water + water");
					var shield = instance_create_depth(x,y,depth,objShield,
						{
							image_xscale: 1,
							image_yscale: 1	
						})
						shield.origin = id;
						immune = true
						stunImmune = true
						alarm[1] = 180
						shieldOn = true
						
	            }
				else if ((element1 == waterCast && element2 == waterCast)) 
				{
					scrOOOM()
				}
	            else if ((element1 == fireCast && element2 == fireCast && fireMana >= 0)) 
				{
	                show_debug_message("fire + fire");
					var fireball = instance_create_depth(x, y, depth, objFireBall, 
					{
						speed: 5 + speed ,
		                direction: aim
					});
					
					fireball.origin = id;
					
	            }
				else if ((element1 == fireCast && element2 == fireCast)) 
				{
					scrOOOM()
				}
	            else if ((element1 == airCast && element2 == airCast && airMana >= 0)) 
				{
	                show_debug_message("air + air");
					//Creates large smoke effect
						var boost = instance_create_depth(
							x - lengthdir_x(64, direction+30),
							y - lengthdir_y(64, direction+30), 
							depth + 1, 
							objDash
						);
						boost.sprite_index = spr_smallBoost;
						boost.image_angle = image_angle;
						boost.image_xscale = 2;
						boost.image_yscale = 2;
					speed *= 2.5;
		            alarm_set(0, 60);
	            }
				else if ((element1 == airCast && element2 == airCast))
				{
					scrOOOM()
				}
	            else if ((element1 == earthCast && element2 == earthCast && earthMana >= 0)) 
				{
	                show_debug_message("earth + earth");
					var earthquake =instance_create_depth(x,y,depth,objEarthquake,
						{	
							image_xscale: 1,
							image_yscale: 1			
						})
						earthquake.origin = id;
	            }
				else if ((element1 == earthCast && element2 == earthCast))
				{
					scrOOOM()
				}
	            else if (array_contains(castQue,earthCast) && array_contains(castQue,waterCast) && earthMana >= 0 && waterMana >= 0 ) 
				{
	                show_debug_message("earth + water");
					
					var mud = instance_create_depth(x,y,depth,objMud)
					
					mud.origin = id;
					
	            }
				else if (array_contains(castQue,earthCast) && array_contains(castQue,waterCast))
				{
					scrOOOM()
				}
				else if (array_contains(castQue,earthCast) && array_contains(castQue,fireCast) && earthMana >= 0 && fireMana >= 0) 
				{
	                show_debug_message("earth + fire");
					
					var mine = instance_create_depth(x,y,depth,objMine) 
					
					mine.origin = id;
					
	            }
				else if (array_contains(castQue,earthCast) && array_contains(castQue,fireCast))
				{
					scrOOOM()
				}
				else if (array_contains(castQue,earthCast) && array_contains(castQue,airCast) && earthMana >= 0 && airMana >= 0) 
				{
	                show_debug_message("earth + wind");
					
					  
		          var tornado = instance_create_depth(x, y, depth, objTornado, 
					{	
						
						speed: 2.5 + speed,
		                direction: aim
					});
					
					tornado.origin = id;
					
					with(objParentPlayer)
					{
						if (id != other.id)
						{
							
						instance_create_depth(x, y, depth, objHoming)
						
						}
					}
		        
	            }
				else if (array_contains(castQue,earthCast) && array_contains(castQue,airCast))
				{
					scrOOOM()
				}
				else if (array_contains(castQue,fireCast) && array_contains(castQue,airCast) && fireMana >= 0 && airMana >= 0) 
				{
	                show_debug_message("fire + earth");
					
					var smoke = instance_create_depth(x,y,depth,objSmoke)
					
						smoke.origin = id;
	            }
				else if (array_contains(castQue,fireCast) && array_contains(castQue,airCast))
				{
					scrOOOM()
				}
				else if (array_contains(castQue,fireCast) && array_contains(castQue,waterCast) && fireMana >= 0 && waterMana >= 0) 
				{
	                show_debug_message("fire + water");
					
					//var shock = instance_create_depth(x,y,depth,objShock)
					
					with(objParentPlayer)
					{
						if (id != other.id)
						{
							
						instance_create_depth(x,y,depth,objShock)
						
						}
					}
	            }
				else if (array_contains(castQue,fireCast) && array_contains(castQue,waterCast))
				{
					scrOOOM()
				}
				
				else if (array_contains(castQue,waterCast) && array_contains(castQue,airCast) && waterMana >= 0 && airMana >= 0) 
				{
	                show_debug_message("water + air");
					
					var iceGust = instance_create_depth(x, y, depth, objIceGust, 
					{	
						speed: 10 + speed,
		                direction: aim
								
					});
					
					iceGust.origin = id;
	            }
				else if (array_contains(castQue,waterCast) && array_contains(castQue,airCast))
				{
					scrOOOM()
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

	if  gamepad_button_check(playerNumber,gp_shoulderrb) && speed < topSpeed && stun == false 
	{
		speed += accel;  //Accelerate forward
	}

	if gamepad_button_check(playerNumber,gp_shoulderlb)  && speed > minSpeed  && stun == false
	{
		speed -= accel;  //Reverse
	}
	if haxis < 0 && stun == false
	{
		direction += turnSpeed 
	}
	if haxis > 0 && stun == false
	{
		direction -= turnSpeed 
	}
	
	//bounce off wall
	if (place_meeting(x + lengthdir_x(speed, direction), y, objWall)) 
	{
    x -= lengthdir_x(13, direction); 
	}

	if (place_meeting(x, y + lengthdir_y(speed, direction), objWall)) 
	{
    y -= lengthdir_y(13, direction); 
	
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
	
	if (stun == true && speed >= 0)
	{
		speed -= 0.10
	}
	
	//blinking when stunned
	if(stun == true)
	{
		blinkTimer += 2;
	}
	
	if (blinkTimer >= blinkInterval) 
	{
		blinkTimer = 0; 
		blink = !blink;
	}
	if (blinkTimer < blinkInterval && stun == false)
	{
		blink = true
	}
	
	
	
}