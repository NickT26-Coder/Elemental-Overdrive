/// @description Insert description here
// You can write your code in this editor
global.room_number = 0
global.gamepads = []
global.timestr_p1 = ""
global.fastest_lap_p1 = ""
global.timestr_p2 = ""
global.fastest_lap_p2 = ""
view_midw = surface_get_width(application_surface)/2;
view_midh  = surface_get_height(application_surface)/2;

audio_play_sound(snd_titleMusic, 1, true)