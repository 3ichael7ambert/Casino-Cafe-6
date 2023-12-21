if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + 128, y + 128)) {
    obj_slots.lines = obj_slots.maxlines;
    obj_slots.bet = obj_slots.maxbet;
    obj_slots.clicked = 1;
    obj_slots.showlines = 0;
    with (obj_slots) {
        scr_get_payout();
    }
}

