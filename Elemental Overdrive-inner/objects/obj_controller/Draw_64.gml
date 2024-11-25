/// @description Insert description here
// Scoreboard in rm_end
if global.room_number == 3 {
	view_midw = surface_get_width(application_surface)/2;
	view_midh  = surface_get_height(application_surface)/2;
	draw_set_alpha(0.9)
	//if player 1 wins subimg = 0
	draw_sprite(spr_results,0, view_midw,view_midh);
	//else subimg = 1
	//draw_sprite(spr_results, 1, view_midw, view_midh);
	draw_set_alpha(1)
	//draw_text for each player's lap time
	//draw_text for fastest lap
}
