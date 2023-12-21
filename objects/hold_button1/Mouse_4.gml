if (image_single == 1)
{
    image_single = 2;
    if(!audio_is_playing(hold_button_snd))
    {
        audio_play_sound(hold_button_snd,1,false);
    }
}
else if (image_single == 2)
{
    image_single = 1;
    if(!audio_is_playing(hold_button_snd))
    {
        audio_play_sound(hold_button_snd,1,false);
    }
}

