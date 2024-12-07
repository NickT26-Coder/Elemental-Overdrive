/// @description Insert description here
// Scoreboard in rm_end
if global.room_number == 3 {
	view_midw = surface_get_width(application_surface)/2;
	view_midh  = surface_get_height(application_surface)/2;
	draw_set_alpha(0.9)
	if global.stopwatch_p1 < global.stopwatch_p2 {
		draw_sprite(spr_results,0, view_midw,view_midh);
	}
	else {
		draw_sprite(spr_results, 1, view_midw, view_midh);
	}
	draw_set_alpha(1)
	//draw_text for each player's lap time
	draw_text_transformed(400, 400, global.timestr_p1, 3, 3,0)
	draw_text_transformed(1130, 400, global.timestr_p2, 3, 3, 0)
	//draw_text for fastest lap
	draw_text_transformed(400, 550, global.fastest_lap_p1, 3, 3, 0)
	draw_text_transformed(1130, 550, global.fastest_lap_p2, 3, 3, 0)
}