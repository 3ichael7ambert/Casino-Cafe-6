draw_sprite(sprite_index,image_index,x,y);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(ft_g1);
if global.freespins=0 then draw_text(x,y,string_hash_to_newline(global.bet));
if global.freespins>0 then draw_text(x,y,string_hash_to_newline("free " +string(global.freespins)));


