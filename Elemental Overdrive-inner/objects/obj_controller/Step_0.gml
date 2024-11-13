/// @description Insert description here
// You can write your code in this editor
if global.room_number == 0 {
	if gamepad_button_check(0, gp_face1) {
		room_goto_next()	
		global.room_number += 1
	}
}