if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y + sprite_height / 2, x + sprite_width, y + sprite_height)) {
    obj_slots.lines++;
    if (obj_slots.lines > obj_slots.maxlines) {
        obj_slots.lines = 1;
    }
    obj_slots.showlines = 1;
}

