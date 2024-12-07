/// @description Insert description here
// You can write your code in this editor

//with(objParentPlayer) 
//	{	
		
//		if (friendly(,))
//		{
//			show_debug_message("works")
//	        instance_create_depth(self.x,self.y,depth,objFirePatch)
			
//		}
//    }
		
// In the Fireball collision event with a Player

if (origin == other.id)
{
    exit
}
else
{
    // The fireball hit a different player
    show_debug_message("Player hit by another player's fireball!");
	scrStun(180,60)
	instance_create_depth(self.x,self.y,depth,objFirePatch)
	instance_destroy(self)
}
