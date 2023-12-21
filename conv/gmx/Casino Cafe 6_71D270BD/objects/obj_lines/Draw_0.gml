draw_sprite_ext(sprite_index, 0, x, y, 1, .5, 0, c_black, 1);
draw_sprite_ext(sprite_index, 0, x, y + sprite_height / 2, 1, .5, 0, c_gray, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(font_slots);
draw_text(x + sprite_width / 2, y + sprite_height / 4, string_hash_to_newline(string(obj_slots.lines)));
draw_text(x + sprite_width / 2, y + sprite_height / 4 + sprite_height / 2, string_hash_to_newline("LINES"));

