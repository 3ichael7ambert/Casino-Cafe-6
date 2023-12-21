if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y, x + 128, y + 128)) {
    obj_slots.clicked = 1;
    obj_slots.showlines = 0;
}

