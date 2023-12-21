draw_sprite_ext(spr_slots_bg, 0, 704 - 320, 128, 1, 1, 0, image_blend, 1); //Optional draws the background behind the symbols.
draw_sprite_ext(spr_slots_bg, 0, 704 + 320, 128, -1, 1, 0, image_blend, 1); //The background is cut in half and mirrored.

for (n = 0; n <= 4; n++) {
    if (row1w[n] = 1) { //Checks if the spot on row1 was involved in a win
        draw_sprite_ext(spr_winner, 0, x1 + size / 2 + n * size, y1 + size / 2, 1.2, 1.2, 0, image_blend, 1); // Draws the winning sprite behind the item.
        draw_sprite_ext(spr_winner, 1, x1 + size / 2 + n * size, y1 + size / 2, 1.2, 1.2, wrot, image_blend, 1); // Draws the winning sprite behind the item with the rotation.
    }
    if (row2w[n] = 1) {
        draw_sprite_ext(spr_winner, 0, x1 + size / 2 + n * size, y1 + size / 2 + size, 1.2, 1.2, 0, image_blend, 1); //Same as above.
        draw_sprite_ext(spr_winner, 1, x1 + size / 2 + n * size, y1 + size / 2 + size, 1.2, 1.2, wrot, image_blend, 1); //Same as above.
    }
    if (row3w[n] = 1) {
        draw_sprite_ext(spr_winner, 0, x1 + size / 2 + n * size, y1 + size / 2 + size * 2, 1.2, 1.2, 0, image_blend, 1); //Same as above.
        draw_sprite_ext(spr_winner, 1, x1 + size / 2 + n * size, y1 + size / 2 + size * 2, 1.2, 1.2, wrot, image_blend, 1); //Same as above.
    }
}

for(i = 0; i <= 3; i++;) { //Repeates for the 4 different y values on each reel.
    draw_sprite_ext(sprite_index, reel1[i], x1, reel1y[i], 1, 1, 0, image_blend, 1); //Draws the sprite of each symbol at the y values.
    draw_sprite_ext(sprite_index, reel2[i], x1 + size, reel2y[i], 1, 1, 0, image_blend, 1);
    draw_sprite_ext(sprite_index, reel3[i], x1 + size * 2, reel3y[i], 1, 1, 0, image_blend, 1);
    draw_sprite_ext(sprite_index, reel4[i], x1 + size * 3, reel4y[i], 1, 1, 0, image_blend, 1);
    draw_sprite_ext(sprite_index, reel5[i], x1 + size * 4, reel5y[i], 1, 1, 0, image_blend, 1);
}

draw_rectangle(x1, y1 - size, x1 + size * 5, y1 - 1, 0); //Draws rectangle the covers symbols above the screen.
draw_rectangle(x1, y1 + size * 3, x1 + size * 5, y1 + size * 4, 0); //Draws rectangle the covers symbols below the screen.
draw_sprite_ext(spr_slots_overlay, 0, 0, 128, 1, 1, 0, image_blend, 1); //Optional draws the background.
draw_sprite_ext(spr_slots_overlay, 0, 1408, 128, -1, 1, 0, image_blend, 1); //The background is cut in half and mirrored.

draw_set_halign(fa_center); //Setting text options
draw_set_valign(fa_center);
draw_set_font(font_slots);
if (haswon == 1) { //If we have stopped spinning.
    draw_text_outline("Press space to start spinning!", 704, 512 + 64, 2);
} else {
    draw_text_outline("Spinning, good luck!", 704, 512 + 64, 2);
}
draw_set_halign(fa_left);

//*******************************************************************************************************************************************************************//
//                                                                                                                                                                   //
//Drawing winning lines | I'm not going to comment this section, all its doing is checking if a line has won and draws lines that follow the path of the winning line//
//                                                                                                                                                                   //
//*******************************************************************************************************************************************************************//

for(i = 1; i >= 0; i--;) {
    if (linew[i] == 1 or (showlines == 1 && lines >= 2 - i)) {
        draw_line_width_colour(x1, y1 + size / 2 + size * i, x1 + size * 5, y1 + size / 2 + size * i, max(size / 16, 1), make_colour_rgb(231, 78, 18), make_colour_rgb(231, 78, 18));
    }
}
if (linew[2] == 1 or (showlines == 1 && lines >= 3)) {
        draw_line_width_colour(x1, y1 + size / 2 + size * 2, x1 + size * 5, y1 + size / 2 + size * 2, max(size / 16, 1), make_colour_rgb(231, 78, 18), make_colour_rgb(231, 78, 18));
    }
if (linew[3] == 1 or (showlines == 1 && lines >= 4)) {
    draw_line_width_colour(x1, y1 + size / 4, x1 + size / 2, y1 + size / 4, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size / 2, y1 + size / 4, x1 + size * 2 + size / 2, y1 + size * 2 + size / 4, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size * 2 + size / 2, y1 + size * 2 + size / 4, x1 + size * 4 + size / 2, y1 + size / 4, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size * 4 + size / 2, y1 + size / 4, x1 + size * 5, y1 + size / 4, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_circle_colour(x1 + size / 2, y1 + size / 4, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
    draw_circle_colour(x1 + size * 4 + size / 2, y1 + size / 4, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
    draw_circle_colour(x1 + size * 2 + size / 2, y1 + size * 2 + size / 4, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
}
if (linew[4] == 1 or (showlines == 1 && lines >= 5)) {
    draw_line_width_colour(x1, y1 + size / 4 + size / 2 + size * 2, x1 + size / 2, y1 + size / 4 + size / 2 + size * 2, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size / 2, y1 + size / 4 + size / 2 + size * 2, x1 + size * 2 + size / 2, y1 + size / 4 + size / 2, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size * 2 + size / 2, y1 + size / 4 + size / 2, x1 + size * 4 + size / 2, y1 + size / 4 + size / 2 + size * 2, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_line_width_colour(x1 + size * 4 + size / 2, y1 + size / 4 + size / 2 + size * 2, x1 + size * 5, y1 + size / 4 + size / 2 + size * 2, max(size / 16, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154));
    draw_circle_colour(x1 + size / 2, y1 + size * 2 + size / 4 + size / 2, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
    draw_circle_colour(x1 + size * 4 + size / 2, y1 + size * 2 + size / 4 + size / 2, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
    draw_circle_colour(x1 + size * 2 + size / 2, y1 + size / 4 + size / 2, max(size / 12, 1), make_colour_rgb(226, 18, 154), make_colour_rgb(226, 18, 154), 0);
}
if (linew[5] == 1 or (showlines == 1 && lines >= 6)) {
    draw_line_width_colour(x1, y1 + size / 4 + size / 2, x1 + size / 2 + size, y1 + size / 4 + size / 2, max(size / 16, 1), c_blue, c_blue);
    draw_line_width_colour(x1 + size / 2 + size, y1 + size / 4 + size / 2, x1 + size / 2 + size * 3, y1 + size / 4 + size / 2 + size * 2, max(size / 16, 1), c_blue, c_blue);
    draw_line_width_colour(x1 + size / 2 + size * 3, y1 + size / 4 + size / 2 + size * 2, x1 + size * 5, y1 + size / 4 + size / 2 + size * 2, max(size / 16, 1), c_blue, c_blue);
    draw_circle_colour(x1 + size / 2 + size, y1 + size / 4 + size / 2, max(size / 12, 1), c_blue, c_blue, 0);
    draw_circle_colour(x1 + size / 2 + size * 3, y1 + size / 4 + size / 2 + size * 2, max(size / 12, 1), c_blue, c_blue, 0);
}
if (linew[6] == 1 or (showlines == 1 && lines >= 7)) {
    draw_line_width_colour(x1, y1 + size / 4 + size * 2, x1 + size / 2 + size, y1 + size / 4 + size * 2, max(size / 16, 1), c_blue, c_blue);
    draw_line_width_colour(x1 + size / 2 + size, y1 + size / 4 + size * 2, x1 + size / 2 + size * 3, y1 + size / 4, max(size / 16, 1), c_blue, c_blue);
    draw_line_width_colour(x1 + size / 2 + size * 3, y1 + size / 4, x1 + size * 5, y1 + size / 4, max(size / 16, 1), c_blue, c_blue);
    draw_circle_colour(x1 + size / 2 + size, y1 + size / 4 + size * 2, max(size / 12, 1), c_blue, c_blue, 0);
    draw_circle_colour(x1 + size / 2 + size * 3, y1 + size / 4, max(size / 12, 1), c_blue, c_blue, 0);
}
if (linew[7] == 1 or (showlines == 1 && lines >= 8)) {
    draw_line_width_colour(x1, y1 + size + size / 4, x1 + size / 2, y1 + size + size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size / 2, y1 + size + size / 4, x1 + size + size / 2, y1 + size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size + size / 2, y1 + size / 4, x1 + size * 3 + size / 2, y1 + size * 2 + size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size * 3 + size / 2, y1 + size * 2 + size / 4, x1 + size * 4 + size / 2, y1 + size + size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size * 4 + size / 2, y1 + size + size / 4, x1 + size * 5, y1 + size + size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_circle_colour(x1 + size / 2, y1 + size + size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size + size / 2, y1 + size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size * 3 + size / 2, y1 + size * 2 + size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size * 4 + size / 2, y1 + size + size / 4, max(size / 12, 1), c_lime, c_lime, 0);
}
if (linew[8] == 1 or (showlines == 1 && lines >= 9)) {
    draw_line_width_colour(x1, y1 + size * 2 - size / 4, x1 + size / 2, y1 + size * 2 - size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size / 2, y1 + size * 2 - size / 4, x1 + size * 2 - size / 2, y1 + size * 3 - size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size * 2 - size / 2, y1 + size * 3 - size / 4, x1 + size * 4 - size / 2, y1 + size - size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size * 4 - size / 2, y1 + size - size / 4, x1 + size * 5 - size / 2, y1 + size * 2 - size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_line_width_colour(x1 + size * 5 - size / 2, y1 + size * 2 - size / 4, x1 + size * 5, y1 + size * 2 - size / 4, max(size / 16, 1), c_lime, c_lime);
    draw_circle_colour(x1 + size / 2, y1 + size * 2 - size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size * 2 - size / 2, y1 + size * 3 - size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size * 4 - size / 2, y1 + size - size / 4, max(size / 12, 1), c_lime, c_lime, 0);
    draw_circle_colour(x1 + size * 5 - size / 2, y1 + size * 2 - size / 4, max(size / 12, 1), c_lime, c_lime, 0);
}

/* */
/*  */
