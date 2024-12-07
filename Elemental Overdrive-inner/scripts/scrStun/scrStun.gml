// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scrStun(stunDuration,stunImmuneTime)
{
	if (origin != other.id) 
	{
		if (!other.stunImmune) 
		{
        show_debug_message("Stunning player: " + string(other.id));
        other.stun = true;
        other.stunImmune = true;
        other.alarm[11] = stunDuration; // End stun
        other.alarm[9] = stunDuration + stunImmuneTime; // End immunity
		} 
		else 
		{
        show_debug_message("Player is stun immune: " + string(other.id));
		}
	}
}