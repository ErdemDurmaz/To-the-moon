///draw_text_speed(x,y,string,speed);
//This script has a second function: Resetting. arg 0 can be "Reset"
//This goes in draw event!
//x and y are where in relation to the object
//string is the string to draw
//The speed at which the characters appear
if (argument[0] == "Reset") {
	draw_text_speed_value = 1;
	draw_text_speed_timer = 0;
	return;
}

draw_text_speed_txt = argument[2];

if !(variable_instance_exists(id, "draw_text_speed_timer")) {
	draw_text_speed_timer = 0;
} else {
	draw_text_speed_timer++;
}

if !(variable_instance_exists(id, "draw_text_speed_value")) {
	draw_text_speed_value = 1;
}

if (draw_text_speed_timer >= argument[3]) {
	draw_text_speed_value++;
	draw_text_speed_timer = 0;
}

draw_text(argument[0],argument[1],string_copy(draw_text_speed_txt,1,draw_text_speed_value));

