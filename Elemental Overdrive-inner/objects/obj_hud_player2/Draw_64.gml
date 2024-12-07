/// @description Insert description here
//Switch statement for checking castQue each case is an element type
var i = 0
var spriteVar = undefined
//Readjust x for the viewport
var new_x = 0
var new_y = 840

	
	for (i = 0; i < array_length(objPlayer2.castQue); i++) 
{
	switch (objPlayer2.castQue[i]) {
 case "Air":
		spriteVar = spr_windPickup
	break;
 case "Fire":
		spriteVar = spr_firePickup
	break;
 case "Water":
		spriteVar = spr_waterPickup
	break;
 case "Earth":
		spriteVar = spr_earthPickup
	break;
 default:
	break;
	}
	
	//slot 1
	if(i == 0)
	{
		draw_sprite_ext(spriteVar, 0, new_x + 1225, new_y + 175, 5, 5, 0, c_white, 1)
	}
	//slot 2
	if(i == 1)
	{
		draw_sprite_ext(spriteVar,0, new_x + 1025, new_y + 175, 5, 5, 0, c_white, 1)
	}
}	

//SHOWS LOW MANA
	if objPlayer2.waterMana == 0 {
        draw_sprite_ext(spr_waterPickup_none, 0, new_x + 600, new_y + 175, 4, 4, 0, c_white, 1)
    }
    if (objPlayer2.airMana == 0) {
        draw_sprite_ext(spr_windPickup_none, 0, new_x + 525, new_y + 175, 4, 4, 0, c_white, 1)
    }
    if (objPlayer2.fireMana == 0) {
        draw_sprite_ext(spr_firePickup_none, 0, new_x + 450, new_y + 175, 4, 4, 0, c_white, 1)
    }
    if (objPlayer2.earthMana == 0) {
        draw_sprite_ext(spr_earthPickup_none, 0, new_x + 375, new_y + 175, 4, 4, 0, c_white, 1)
    }
//Amount of elements
	draw_text_transformed(new_x + 1670, new_y, objPlayer2.waterMana, 1.5, 1.5, 0)
	draw_text_transformed(new_x + 1670, new_y + 105, objPlayer2.earthMana, 1.5, 1.5, 0)
	draw_text_transformed(new_x + 1835, new_y,objPlayer2.fireMana , 1.5, 1.5, 0)
	draw_text_transformed(new_x + 1845, new_y + 110, objPlayer2.airMana, 1.5, 1.5, 0)
//Only in Main Race Room and able to move
if global.room_number == 2 {
	//Display Timer after countdown
	//Start Timer when race starts
	draw_text_transformed(new_x + 1090, new_y - 5, global.stopwatch_p2, 2, 2, 0)
	//Stop Timer for each player upon finishing
	//Save lap time in variable for end screen
//Lap Count, lap variable
	draw_text_transformed(new_x + 1060, new_y + 35, objPlayer2.lapCount, 2, 2, 0)
//Current Place, variable definition boolean "isFirst" that switches
	var winning = false
	if objPlayer1.lapCount == objPlayer2.lapCount and objPlayer1.checkpoint_number == objPlayer2.checkpoint_number {
			if objPlayer1.checkpoint_distance > objPlayer2.checkpoint_distance {
				winning  = true	
			}
	}
	else if objPlayer1.lapCount == objPlayer2.lapCount and objPlayer1.checkpoint_number < objPlayer2.checkpoint_number {
		winning = true	
	}
	else if objPlayer1.lapCount < objPlayer2.lapCount {
		winning = true	
	}
	if winning {
		draw_sprite_ext(spr_first_place, 0, new_x + 1500, new_y + 30, 1, 1, 0, c_white, 1)
	}
	else {
		draw_sprite_ext(spr_second_place, 0, new_x + 1500, new_y + 30, 1, 1, 0, c_white, 1)
	}
	
	
}