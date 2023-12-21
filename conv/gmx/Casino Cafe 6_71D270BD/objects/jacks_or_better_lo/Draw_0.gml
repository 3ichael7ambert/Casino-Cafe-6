/// @description set the text colour if the score matches

draw_set_font(text_font);
draw_set_colour(c_olive);
draw_text(520,220,string_hash_to_newline("Jacks Or Better"));
    
draw_set_font(numbers_font);
draw_text(710,220,string_hash_to_newline(string(global.bet)));



