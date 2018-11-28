/// @description Insert description here
// You can write your code in this editor
// ---------------------UPDATE INPUT
input_left          = keyboard_check(vk_left);
input_right         = keyboard_check(vk_right);
input_up			= keyboard_check(vk_up);
input_down          = keyboard_check(vk_down);

//---------- RESET MOVE VARIABLES
moveX = 0
moveY = 0

//----------INTENDED MOVEMENT
if(input_left){
     moveX = -spd;
	 image_speed  = spd/3;
	sprite_index = spr_olgawalkleft
}

else if(input_right){
	moveX  =+spd;
	image_speed  = spd/3;
	sprite_index = spr_olgawalkright
}

 else if(input_up){
	moveY =-spd;
	image_speed  = spd/3;
	sprite_index = spr_olgawalkup
}
else if (input_down){
	moveY =+spd;
	image_speed  = spd/3;
	sprite_index = spr_olgawalkdown
}

// Stop Animation
if (keyboard_check(vk_nokey)) {
	image_speed =0;
	image_index =0;
}
// Coliision Checks

if (moveX !=0) {
	if(place_meeting(x+moveX,y ,obj_collision)){
		moveX =0
	}
}
if(moveY !=0) {
	if(place_meeting(x,y+moveY, obj_collision)) {
		moveY =0;
	}
}
//objects transition

x += moveX;
y += moveY;


