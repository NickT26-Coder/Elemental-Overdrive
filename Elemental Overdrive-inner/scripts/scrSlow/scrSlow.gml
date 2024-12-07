// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSlow(slowDuration, slowAmount)
{	
	if (origin != other.id) 
	{
	other.slow = true
	
	other.speed -= slowAmount
	
	other.alarm[10] = (slowDuration)
	}
}




