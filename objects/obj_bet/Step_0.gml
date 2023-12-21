if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y + sprite_height / 2, x + sprite_width, y + sprite_height)) {
    obj_slots.bet += obj_slots.minbet;
    if (obj_slots.bet > obj_slots.maxbet) {
        obj_slots.bet = obj_slots.minbet;
    }
    with (obj_slots) {
        scr_get_payout();
    }
}

