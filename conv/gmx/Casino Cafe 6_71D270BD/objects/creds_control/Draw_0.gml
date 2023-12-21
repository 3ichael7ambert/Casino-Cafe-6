/// @description draw credit amount to screen

draw_set_font(numbers_font);
draw_set_colour(c_yellow);
draw_text(x,y,string_hash_to_newline(string(global.credits)));

