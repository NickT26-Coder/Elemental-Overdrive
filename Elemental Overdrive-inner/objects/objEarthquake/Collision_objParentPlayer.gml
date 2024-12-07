/// @description Insert description here
// You can write your code in this editor
//with(objParentPlayer) 
//	{	
		
//		if (!friendly()) 
//		{
//			scrStun(other,120,4)
//		}
//    }
	
if (origin != other.id) {
    if (!other.stunImmune) {
        show_debug_message("Stunning player: " + string(other.id));
        other.stun = true;
        other.stunImmune = true;
        other.alarm[11] = stunDuration; 
        other.alarm[9] = stunDuration + stunImmuneTime; 
    } else {
        show_debug_message("Player is stun immune: " + string(other.id));
    }
}

