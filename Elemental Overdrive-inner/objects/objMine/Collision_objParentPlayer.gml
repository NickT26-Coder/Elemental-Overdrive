/// @description Insert description here
// You can write your code in this editor
if(armed)
{
	if (!other.stunImmune) 
		{
        show_debug_message("Stunning player: " + string(other.id));
        other.stun = true;
        other.stunImmune = true;
        other.alarm[11] = 120; // End stun
        other.alarm[9] = 120 + 60; // End immunity
		} 
		else 
		{
        show_debug_message("Player is stun immune: " + string(other.id));
		}
}