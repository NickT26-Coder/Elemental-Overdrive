/// @description Insert description here
// You can write your code in this editor
if global.room_number == 0 {//Title Screen
	if gamepad_button_check(0, gp_face1) {
		room_goto_next()	
		global.room_number += 1
	}
	if gamepad_button_check(0, gp_face4) {
		room_goto(rm_credits)	
		global.room_number = 5
	}
}

if global.room_number == 3 {//End Screen
	if gamepad_button_check(0, gp_face1) {
		room_goto(rm_mainAlt)
		global.room_number = 2
	}
	
	if gamepad_button_check(0, gp_face3) {
		room_goto_next()
		global.room_number += 1
	}
}

if global.room_number == 2 {//Main Game
	if instance_exists(obj_hud_player1) and instance_exists(objPlayer1) and instance_exists(obj_hud_player2) and instance_exists(objPlayer2) {
		global.timestr_p1 = obj_hud_player1.time_str
		global.fastest_lap_p1 = obj_hud_player1.fastest_lap_str
		global.timestr_p2 = obj_hud_player2.time_str
		global.fastest_lap_p2 = obj_hud_player2.fastest_lap_str
		//Move to next level if both are done
		if objPlayer1.lapCount == 11 and objPlayer2.lapCount == 11 {
			room_goto(rm_end)	
			global.room_number = 3
		}
	}
}