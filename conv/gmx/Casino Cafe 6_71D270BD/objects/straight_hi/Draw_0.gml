/// @description change the text colour if the score matches
if(is_draw == 1)
{
    draw_set_font(text_font);
    draw_set_colour(c_green);
    draw_text(520,100,string_hash_to_newline("Straight"));
    
    draw_set_font(numbers_font);
    draw_text(710,100,string_hash_to_newline(string(global.bet *4)));
}
else if (is_draw == 0)
{
    draw_set_font(text_font);
    draw_set_colour(c_yellow);
    draw_text(520,100,string_hash_to_newline("Straight"));
    
    draw_set_font(numbers_font);
    draw_text(710,100,string_hash_to_newline(string(global.bet *4)));
}

