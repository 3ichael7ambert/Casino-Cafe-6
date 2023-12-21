draw_set_font(ft_showcash);
draw_set_valign(fa_center);draw_set_halign(fa_middle);
if global.lastwin>0 {
draw_text_color((room_width/2)+2,(room_height/2-20)+2,string_hash_to_newline(global.lastwin),c_orange,c_orange,c_orange,c_orange,image_alpha);
draw_text_color((room_width/2)-2,(room_height/2-20)-2,string_hash_to_newline(global.lastwin),c_orange,c_orange,c_orange,c_orange,image_alpha);
draw_text_color((room_width/2)-2,(room_height/2-20)+2,string_hash_to_newline(global.lastwin),c_orange,c_orange,c_orange,c_orange,image_alpha);
draw_text_color((room_width/2)+2,(room_height/2-20)-2,string_hash_to_newline(global.lastwin),c_orange,c_orange,c_orange,c_orange,image_alpha);
draw_text_color(room_width/2,(room_height/2)-20,string_hash_to_newline(global.lastwin),c_white,c_yellow,c_orange,c_yellow,image_alpha);
draw_text_color(room_width/2,(room_height/2)-20,string_hash_to_newline(global.lastwin),c_white,c_yellow,c_orange,c_yellow,image_alpha);
draw_text_color(room_width/2,(room_height/2)-20,string_hash_to_newline(global.lastwin),c_white,c_yellow,c_orange,c_yellow,image_alpha);
draw_text_color(room_width/2,(room_height/2)-20,string_hash_to_newline(global.lastwin),c_white,c_yellow,c_orange,c_yellow,image_alpha);
}

