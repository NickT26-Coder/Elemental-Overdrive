/// @description Insert description here
// You can write your code in this editor
if (array_length(gamepads) > 0)
{
	var haxis = gamepad_axis_value(0, gp_axislh);
	var vaxis = gamepad_axis_value(0, gp_axislv);

	
	
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