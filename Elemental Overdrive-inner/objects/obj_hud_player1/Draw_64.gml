/// @description Insert description here
// You can write your code in this editor
//Switch statement for checking castQue each case is an element type
var i = 0
var spriteVar = undefined
//Readjust x for the viewport
var new_x = 0
var new_y = 840

	
	for (i = 0; i < array_length(objPlayer1.castQue); i++) 
{
	switch (objPlayer1.castQue[i]) {
 case "Air":
		spriteVar = spr_waterPickup
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
		draw_sprite_ext(spriteVar, 0, new_x + 700, new_y + 200, 5, 5, 0, c_white, 1)
	}
	//slot 2
	if(i == 1)
	{
		draw_sprite_ext(spriteVar,0, new_x + 500, new_y + 200, 5, 5, 0, c_white, 1)
	}
}

//Amount of elements
	draw_text_transformed(new_x + 60, new_y - 5, objParentPlayer.airMana, 1.5, 1.5, 0)
	draw_text_transformed(new_x + 60, new_y + 100, objParentPlayer.fireMana, 1.5, 1.5, 0)
	draw_text_transformed(new_x + 235, new_y - 5, objParentPlayer.waterMana, 1.5, 1.5, 0)
	draw_text_transformed(new_x + 235, new_y + 100, objParentPlayer.earthMana, 1.5, 1.5, 0)
//Only in Main Race Room and able to move
if global.room_number == 2 {
//Display Timer after countdown
	//Start Timer when race starts
	draw_text_transformed(new_x + 450, new_y - 10, global.stopwatch_p1, 2, 2, 0)
	//Stop Timer for each player upon finishing
	//Save lap time in variable for end screen
//Lap Count, lap variable
	draw_text_transformed(new_x + 428, new_y + 30, objFinishLine.lapCounter, 2, 2, 0)
//Current Place, variable definition boolean "isFirst" that switches
//if isFirst then
	draw_sprite_ext(spr_first_place, 0, new_x + 850, new_y + 30, 1, 1, 0, c_white, 1)
//else
	draw_sprite_ext(spr_second_place, 0, new_x + 850, new_y + 30, 1, 1, 0, c_white, 1)
}