/// @description Insert description here
// Movement textbox
if (objPlayer1.y > 1) {
	draw_sprite_ext(spr_text_box, 0, 375,100, 0.25, 0.25, 0, c_white, 0.8)
}

//Spells textbox
if (objPlayer1.y > 50) {
	draw_sprite_ext(spr_text_box, 1,850,150, 0.25, 0.25, 0, c_white, 0.8)
}

//Last tutorial topic
if (objPlayer1.y > 100) {
	draw_sprite_ext(spr_text_box, 2, 450,425, 0.25, 0.25, 0, c_white, 0.8)
}