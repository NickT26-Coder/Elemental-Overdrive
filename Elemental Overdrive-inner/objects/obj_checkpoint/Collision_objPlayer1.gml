/// @description Insert description here
// You can write your code in this editor
if passed_p1 == false {
	if objPlayer1.checkpoint_number == 4 {
		objPlayer1.checkpoint_number = 0
	}
	else {
		objPlayer1.checkpoint_number += 1
	}
	passed_p1 = true
}