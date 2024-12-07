/// @description Insert description here
if global.room_number == 2 and objPlayer2.lapCount < 11 and global.start {
	objPlayer2.accel = 0.2
	global.stopwatch_p2 += delta_time / 1000000;
	var time_sec = floor(global.stopwatch_p2)

	var minute = string_format(time_sec div 60 mod 60,2,0)
	var second = string_format(time_sec mod 60,2,0)
	time_str = string_replace_all(minute + ":" + second," ","0")
		//Track the time of the indivual laps
		if instance_place(objPlayer2.x, objPlayer2.y, objFinishLine) {
			var lap_time = current_lap_time - prev_lap_time
			prev_lap_time = current_lap_time
			if (lap_time < fastest_lap_time) and objPlayer2.lapCount > 1 {
				fastest_lap_time = lap_time
				var time_sec_lap = floor(lap_time)
				var minute_lap = string_format(time_sec div 60 mod 60,2,0)
				var second_lap = string_format(time_sec mod 60,2,0)
				fastest_lap_str = string_replace_all(minute + ":" + second, " ", "0")
			}
		}
		else {
			current_lap_time = global.stopwatch_p2
		}
}
else if global.room_number = 2 and global.start == false {
	objPlayer2.accel = 0	
}