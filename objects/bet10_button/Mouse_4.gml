if (image_single == 1)
{
    if (deal_button.image_single == 0 and obj_draw_button.image_single == 0)
    {
        global.bet = 0;
    }
    clear_cards();
    scoreboard_lo();
    global.credits -= 10;
    global.bet += 10;
    with (deal_button) {image_single = 1}
    audio_play_sound(credit_in,1,false);
}

