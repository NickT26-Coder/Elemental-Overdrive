// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrSlow(player,slowDuration, slowAmount)
{	
	player.Slow = true
	
	player.speed -= slowAmount
	
	player.alarm_set(10,slowDuration)
}