/// @description Insert description here
// You can write your code in this editor
//gamepads = [];
castQue = [];

latestCast = undefined

fireMana = 0;
waterMana = 0;
airMana = 0;
earthMana = 0;

origin = undefined


waterCast = "Water"
airCast = "Air"
fireCast = "Fire"
earthCast = "Earth"

lapCount = 0
checkpoint_number = 0
checkpoint_distance = 0

if(room = rm_tutorial){
	direction = 270
} else{
	direction = 180
}
speed = 0
// Sets animation to off
image_speed = 0

//Scaling t o fit map
image_xscale= 0.10
image_yscale= 0.10

//aiming
aimTrue = false
aimInstance = instance_create_depth(x,y,depth, objAim)

//blinking
blinkTimer = 0;   
blinkInterval = 11; 
blink = true; 


//spell variables
notEnoughMana = false
shieldOn = false
dashOver = false
//status effects
stun = false
slow = false
immune = false
stunImmune = false
blind = false

//checkpoint
lapCount = 0
checkpoint_number = 0
checkpoint_distance = 0