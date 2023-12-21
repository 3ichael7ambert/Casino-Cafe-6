draw_sprite(sprite_index,image_index,x,y);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_red);
draw_set_font(ft_g1);
if global.game=1 then draw_text(x,y,string_hash_to_newline(global.jackpot_g1));
if global.game=2 then draw_text(x,y,string_hash_to_newline(global.jackpot_g2));
if global.game=3 then draw_text(x,y,string_hash_to_newline(global.jackpot_g3));
draw_set_color(c_white);

