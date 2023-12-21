draw_set_valign(fa_center);//Sets text options.
draw_set_halign(fa_left);
draw_set_font(font_slots_small);
for (i = 0; i < obj_slots.symbols; i++;) { //Repeates for the number of symbols.
    draw_sprite_ext(obj_slots.sprite_index, i, 0 + i * obj_slots.size, 0 + obj_slots.size / 4, .5, .5, 0, image_blend, 1); //Draws the symbol.
    draw_text(0 + i * obj_slots.size + obj_slots.size / 2, 0 + obj_slots.size * .33, string_hash_to_newline("3:  " + string(obj_slots.paythree[i + 1] / obj_slots.bet))); //Draws the multiplier for winning 3 of the symbol.
    draw_text(0 + i * obj_slots.size + obj_slots.size / 2, 0 + obj_slots.size * .5, string_hash_to_newline("4:  " + string(obj_slots.payfour[i + 1] / obj_slots.bet))); //Draws the multiplier for winning 4 of the symbol.
    draw_text(0 + i * obj_slots.size + obj_slots.size / 2, 0 + obj_slots.size * .66, string_hash_to_newline("5:  " + string(obj_slots.payfive[i + 1] / obj_slots.bet))); //Draws the multiplier for winning 5 of the symbol.
}

