/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if global.room_number = 2 {
	var next_checkpoint
	var new_x = obj_checkpoint.x
	var new_y = obj_checkpoint.y
	with (obj_checkpoint) {
		//FIXED STOPWATCH FOR BOTH PLAYERS, LAP COUNT VARIABLE,	GLOBAL.START, STOPWATCH P2 AND HUD POSITIONS
		next_checkpoint = id
		if next_checkpoint.checkpoint_id == objPlayer2.checkpoint_number {
			new_x = next_checkpoint.x
			new_y = next_checkpoint.y
		}
	}
	checkpoint_distance = distance_to_point(new_x, new_y)
}
