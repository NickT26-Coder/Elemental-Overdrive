// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrStun(player,stunDuration,stunImmunetime)
{
	if(player.stunImmune = false)
	{
		player.stun = true
		player.stunImmune = true
		player.alarm_set(11,stunDuration)
		player.alarm_set(9,stunDuration+stunImmunetime)
	}
}