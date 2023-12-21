/// @description 

draw_set_color(c_black);
draw_set_alpha(0.8);
draw_roundrect(x+40,y,room_width-40,y+320,false);
draw_set_color(c_white);
draw_set_alpha(1);
draw_roundrect(x+40,y,room_width-40,y+320,true);

draw_set_font(font2);
draw_set_halign(fa_center);

draw_text(x+350,y+10,string_hash_to_newline("Game Over"));

draw_set_font(-1)
draw_set_color(c_lime);
draw_text(x+560,y+5,string_hash_to_newline("Press R to Restart"));
draw_set_font(font2);



////draw top 10 scores
showorange = ds_list_find_index(obj_control.hs_list,obj_control.score_round);


  draw_set_color(c_red); 
  draw_text(room_width/2,y+45,string_hash_to_newline("Top 10")); //"Top 10" - top of screen
  draw_text(room_width/2,y+49,string_hash_to_newline("______")); //"Top 10" - top of screen
  draw_set_color(-1);
  
  for (i=0;i<10;i++) { //
   draw_set_halign(fa_center); //set halign
   draw_text(room_width/2,y+80+i*23,string_hash_to_newline(string(i+1)+":_____________")); //draw lines
   
      draw_set_halign(fa_left); //set halign left to right
      
      if ds_list_find_value(obj_control.hs_list,i) > 0 {
       if i == showorange { 
        draw_set_color(c_orange);
        draw_text(room_width/2-42,y+80+i*23,string_hash_to_newline(string(ds_list_find_value(obj_control.hs_list,i)))); //draw scores with the hs_score position
        draw_set_color(c_white);
       } else draw_text(room_width/2-42,y+80+i*23,string_hash_to_newline(string(ds_list_find_value(obj_control.hs_list,i)))); //draw scores with the hs_score position
      }
  }  


