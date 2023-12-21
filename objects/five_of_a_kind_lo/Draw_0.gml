/// @description set the text colour if the score matches

draw_set_font(text_font);
draw_set_colour(c_olive);
draw_text(175,100,string_hash_to_newline("5 Of A Kind"));
    
draw_set_font(numbers_font);
draw_text(420,100,string_hash_to_newline(string(global.bet *150)));



