function draw_text_outline(argument0, argument1, argument2, argument3) {
	draw_set_color(make_color_rgb(81, 35, 20));
	draw_text(argument1+argument3,argument2+argument3,string_hash_to_newline(argument0));
	draw_text(argument1-argument3,argument2-argument3,string_hash_to_newline(argument0));
	draw_text(argument1,argument2+argument3,string_hash_to_newline(argument0));
	draw_text(argument1+argument3,argument2,string_hash_to_newline(argument0));
	draw_text(argument1,argument2-argument3,string_hash_to_newline(argument0));
	draw_text(argument1-argument3,argument2,string_hash_to_newline(argument0));
	draw_text(argument1-argument3,argument2+argument3,string_hash_to_newline(argument0));
	draw_text(argument1+argument3,argument2-argument3,string_hash_to_newline(argument0));
	draw_set_color(make_color_rgb(249, 244, 187));
	draw_text(argument1,argument2,string_hash_to_newline(argument0));



}
