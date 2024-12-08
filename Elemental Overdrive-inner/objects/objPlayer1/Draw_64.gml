/// @description Insert description here
// You can write your code in this editor
	var new_x = 0
var new_y = 840
	
	if (notEnoughMana == true)
	{
		draw_sprite_ext(spr_waterPickup_none, 0, new_x + 600, new_y + 175, 4, 4, 0, c_white, 1)
		draw_sprite_ext(spr_windPickup_none, 0, new_x + 525, new_y + 175, 4, 4, 0, c_white, 1)
		draw_sprite_ext(spr_firePickup_none, 0, new_x + 450, new_y + 175, 4, 4, 0, c_white, 1)
		draw_sprite_ext(spr_earthPickup_none, 0, new_x + 375, new_y + 175, 4, 4, 0, c_white, 1)
	}