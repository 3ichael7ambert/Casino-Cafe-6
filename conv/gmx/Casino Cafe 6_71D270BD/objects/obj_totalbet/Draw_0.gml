draw_sprite_ext(sprite_index, 0, x, y, 2.25, .33, 0, c_black, 1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(font_slots_small);
draw_text(x + sprite_width * 2.25 / 2, y + sprite_height / 6, string_hash_to_newline("Total Bet: " + string(obj_slots.bet * obj_slots.lines)));

