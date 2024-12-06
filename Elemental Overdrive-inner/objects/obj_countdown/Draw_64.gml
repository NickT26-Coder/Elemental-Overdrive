/// @description Insert description here
// You can write your code in this editor
// dim out the screen
draw_set_alpha(0.4)
draw_set_colour(c_black)
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)

draw_set_color(c_yellow)
draw_text_transformed(940, 400, time, 5, 5, 0)