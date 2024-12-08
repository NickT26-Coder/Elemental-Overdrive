/// @description Insert description here
// You can write your code in this editor


		if (!other.stunImmune) 
		{
        show_debug_message("Stunning player: " + string(other.id));
        other.stun = true;
        other.stunImmune = true;
        other.alarm[11] = 30 // End stun
        other.alarm[9] = 60; // End immunity
		} 
		else 
		{
        show_debug_message("Player is stun immune: " + string(other.id));
		}