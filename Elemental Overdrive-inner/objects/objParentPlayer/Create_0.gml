/// @description Insert description here
// You can write your code in this editor
//gamepads = [];
castQue = [];

latestCast = undefined

fireMana = 0;
waterMana = 0;
airMana = 0;
earthMana = 0;

momentum = undefined
flamethrower = false

waterCast = "Water"
airCast = "Air"
fireCast = "Fire"
earthCast = "Earth"


direction = 90;
speed = 0
// Sets animation to off
image_speed = 0

//Scaling t o fit map
image_xscale=.75
image_yscale=.75

aimTrue = false

aimInstance = instance_create_depth(x,y,depth, objAim)