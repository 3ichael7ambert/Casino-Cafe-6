/// @description set the text colour if the score matches

draw_set_font(text_font);
draw_set_colour(c_olive);
draw_text(520,100,string_hash_to_newline("Straight"));
    
draw_set_font(numbers_font);
draw_text(710,100,string_hash_to_newline(string(global.bet *4)));



