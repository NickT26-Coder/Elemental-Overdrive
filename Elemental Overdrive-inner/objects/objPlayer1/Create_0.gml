/// @description Insert description here
// You can write your code in this editor
//gamepads = [];
castQue = [];

latestCast = undefined

fireMana = 0;
waterMana = 0;
airMana = 0;
earthMana = 0; 

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

//Tile Collisions for Tutorial
layerID = layer_get_id("tutorial_high");
tiles = layer_tilemap_get_id(layerID);
