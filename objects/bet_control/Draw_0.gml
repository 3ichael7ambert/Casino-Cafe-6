draw_set_font(numbers_font);
draw_set_colour(c_yellow);

if (bet1_button.image_single == 0 and bet5_button.image_single == 0 and bet10_button.image_single == 0)
{
    draw_bet = global.bet;
    return(0);
}


if (deal_button.image_single == 0 and obj_draw_button.image_single == 0)
{
    draw_bet = 0;
}
else
{
    draw_bet = global.bet;
}

draw_text(x,y,string_hash_to_newline(string(draw_bet)));
    

