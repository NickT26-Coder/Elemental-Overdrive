/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black);

//if (objPlayer1.blind == true) {
//    // Blind Player 1's viewport
//    draw_rectangle(view_xport[0], view_yport[0], view_xport[0] + view_wport[0], view_yport[0] + view_hport[0], false);
//}

//if (objPlayer2.blind == true) {
//    // Blind Player 2's viewport
//    draw_rectangle(view_xport[1], view_yport[1], view_xport[1] + view_wport[1], view_yport[1] + view_hport[1], false);
//}
 // Make the blinding effect semi-transparent
draw_set_color(c_black);

if (objPlayer1.blind == true) {
    draw_rectangle(0, 0, 960, 808, false);
}

if (objPlayer2.blind == true) {
	show_debug_message("blind")
    draw_rectangle(960, 0, 1920, 808, false);
}


