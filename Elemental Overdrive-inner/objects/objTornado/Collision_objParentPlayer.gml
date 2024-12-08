/// @description Insert description here
// You can write your code in this editor
if (origin == other.id)
{
    exit
}
else
{	
	other.stunImmune = false
	other.immune = false
	
	instance_destroy(self)
}