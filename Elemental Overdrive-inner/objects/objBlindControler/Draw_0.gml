/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
				
if(objPlayer1.blind == true)
{
	draw_rectangle(0, 0, 960,720 , false);
}
if(objPlayer2.blind == true)
{
	draw_rectangle(960, 0, 960, 720 , false);
}