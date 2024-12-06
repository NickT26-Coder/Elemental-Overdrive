/// @description Insert description here
// You can write your code in this editor
	if(instance_exists(objHoming))
	{
		direction = point_direction(x, y, objHoming.x, objHoming.y);
	}
    
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);