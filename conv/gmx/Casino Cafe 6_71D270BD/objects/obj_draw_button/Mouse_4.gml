if (image_single == 0)
{
    exit;
}
else
{
    scoreboard_lo();
    is_draw = 1;
    image_single = 0;
    draw_cards();
    with (bet1_button) {image_single = 1}
    with (bet5_button) {image_single = 1}
    with (bet10_button) {image_single = 1}
    with (hold_button1) {image_single = 0}
    with (hold_button2) {image_single = 0}
    with (hold_button3) {image_single = 0}
    with (hold_button4) {image_single = 0}
    with (hold_button5) {image_single = 0}
}

