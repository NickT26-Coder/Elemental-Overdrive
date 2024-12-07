/// @description Insert description here
// You can write your code in this editor
if passed_p2 == false {
	if objPlayer2.checkpoint_number == 4 {
		objPlayer2.checkpoint_number = 0
	}
	else {
		objPlayer2.checkpoint_number += 1
	}
	passed_p2 = true
}