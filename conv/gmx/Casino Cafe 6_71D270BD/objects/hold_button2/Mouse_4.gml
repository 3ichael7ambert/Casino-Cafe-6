if (image_single == 1)
{
    image_single = 2;
    audio_play_sound(hold_button_snd,1,false);
}
else if (image_single == 2)
{
    image_single = 1;
    audio_play_sound(hold_button_snd,1,false);
}

