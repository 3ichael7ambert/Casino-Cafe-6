/// @description set the text colour if the score matches

draw_set_font(text_font);
draw_set_colour(c_olive);
draw_text(520,140,string_hash_to_newline("3 Of A Kind"));
    
draw_set_font(numbers_font);
draw_text(710,140,string_hash_to_newline(string(global.bet *3)));



