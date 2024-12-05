/// @description Insert description here
// Track Time, save fastest lap
//if objPlayer1.lapCount < 11 {
global.stopwatch_p1 += delta_time / 1000000;
var time_sec = floor(global.stopwatch_p1)

var minute = string_format(time_sec div 60 mod 60,2,0);
var second = string_format(time_sec mod 60,2,0);
timestr = string_replace_all(minute + ":" + second," ","0");
//}
//else {
//}