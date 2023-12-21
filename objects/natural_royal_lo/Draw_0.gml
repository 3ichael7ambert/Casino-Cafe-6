/// @description set the text colour if the score matches

draw_set_font(text_font);
draw_set_colour(c_olive);
draw_text(175,60,string_hash_to_newline("Natural Royal Flush"));
    
draw_set_font(numbers_font);
draw_text(420,60,string_hash_to_newline(string(global.bet *250)));



