/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_white);
draw_text(room_width / 2, (room_height / 2) + 30,"Time:"+string_format(stopwatch/7200,2,0)+":"+string_format((stopwatch/60) % 60,2,0)+":"+string_format(((stopwatch % 60) * 100 / 60),2,0));
