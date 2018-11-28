/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_main_small);
draw_set_color(c_white);



draw_set_halign(fa_center);
draw_set_valign(fa_center);
//storing the current string in txt
txt = ds_map_find_value(textMap , value) ;

if (string_char_at(txt,string_length(txt)) == "?" ) {
	question = true;
} else {
	question = false;
}



//drawing the txt variable
draw_text_speed(x,y ,string(txt), 0.10 *room_speed); 


//if question is false you can ress enter
// if question is true you can press Y or N
draw_set_color(c_red);

if (question == false) {
	draw_text(x,y + 50,"PLEASE PRESS ENTER TO CONTINUE");
} else {
	
draw_text(x,y + 50,"WOULD YOU PRESS (Y) FOR yes (N) for no");

}
