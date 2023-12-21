draw_set_halign(fa_center); //Sets text options.
draw_set_valign(fa_center);
draw_set_font(font_slots_won);
draw_text_outline("WON", 704, 256 - 8, 2); //Draws WON
draw_text_outline(string(round(show)), 704, 256 + 136, 2); //Draws our display number.

