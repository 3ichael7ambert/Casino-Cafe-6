/// @description draw rectangle behind cards


//draw background
if !obj_control.star_field {
  draw_background(0,0,background0);
}









//draw black center - stars
if obj_control.star_field {
  draw_set_color(c_black);
  draw_set_alpha(1);

  draw_set_circle_precision(32);
  draw_circle(room_width/2,room_height/2,60,false);
}









//draw stack
draw_set_alpha(1);

if ds_list_empty(obj_control.list) {
  draw_sprite(spr_stack,0,obj_stack.x,obj_stack.y); //draw place holder sprite if empty
}

var i, list_size = ds_list_size(obj_control.list), oc = obj_control, os = obj_stack;
for (i=0;i<list_size;i++;) {
  draw_sprite(spr_cards,ds_list_find_value(oc.color_list,ds_list_size(oc.color_list)-1),floor(os.x+i*0.20),floor(os.y+i*0.20)); //draw stack
}










//draw hand made + score made
var i;
var al = array_length_1d(obj_control.name);

draw_set_halign(fa_center);

draw_set_alpha(0.6);
draw_set_color(c_black);
draw_set_font(font0);

draw_rectangle(250,5,450,60,false);

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(250,5,450,60,true);

if obj_score.timer_lifespan {
  for(i=0;i<al;i++) {
   if obj_control.HA[i] == true {
    draw_set_font(font0);
    draw_set_color(ds_list_find_value(obj_control.rotate_colors2_list,0));
    draw_text(350,5,string_hash_to_newline(string(obj_control.name[i])));
    
    draw_set_font(font1);
    draw_set_color(ds_list_find_value(obj_control.rotate_colors1_list,0));
    draw_text(350,33,string_hash_to_newline(string(obj_score.score_to_draw)));
   }
  }
}
draw_set_color(-1);



























var i;
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(-1);

draw_set_font(font2);
draw_text(450,320,string_hash_to_newline("Round: "+string(obj_stack.refill_no+1)));


draw_set_font(-1);
for(i=0;i<3;i++) {
  draw_rectangle(210-i,80-i,490+i,288+i,true); 
}
draw_roundrect(498,88,680,270,true); 

//
draw_set_color(c_black);
draw_set_alpha(0.5); 
draw_roundrect(210,80,490,288,false); 

draw_roundrect(498,88,680,270,false); 

draw_set_color(-1);
draw_set_alpha(1);

if obj_control.draw_message {
  draw_set_font(font3);
  draw_set_halign(fa_center);
  draw_set_color(c_orange);
  draw_text(590,90,string_hash_to_newline(" Pick 5 Poker"));
  draw_set_color(c_white);
  draw_text(590,108,string_hash_to_newline(" by Mark-VIII"));
  
  draw_text(590,138,string_hash_to_newline("Keys:"));
  draw_text(590,156,string_hash_to_newline("Left MB: Select/Deselect"));
  draw_text(590,174,string_hash_to_newline("Right MB: Card Marked"));
  draw_text(590,192,string_hash_to_newline("Center MB: Deselect All"));
  draw_text(590,210,string_hash_to_newline("Esc: Quit Game"));

  draw_text(630,246,string_hash_to_newline("Version: 1.0.0"));
  
} else {
   var i;
   draw_set_halign(-1);
   draw_set_font(-1);
    for(i=0;i<11;i++) {
     draw_text(500,90+(i*15),string_hash_to_newline(string(obj_control.name[i])));
  
     if obj_control.HM[i] > 0 {
      draw_text(645,90+(i*15),string_hash_to_newline(string(obj_control.HM[i])));
     }
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
//show hands
var i;

draw_set_color(c_black);
draw_set_alpha(0.5); 
draw_roundrect(20,80,198,290,false); 
draw_set_color(-1);


draw_set_alpha(1);
for(i=0;i<11;i++) {
  draw_sprite_ext(spr_show_hands,i,65,88+(19*i),0.75,0.75,0,-1,1);
  draw_sprite_ext(spr_scores,i,165,88+(19*i),0.75,0.75,0,-1,1);
}

draw_roundrect(20,80,198,290,true); 


for(i=0;i<11;i++) {
  if obj_control.HA[i] == true {
   if obj_score.timer_lifespan {
    draw_set_color(ds_list_find_value(obj_control.rotate_colors1_list,0));
    draw_set_alpha(0.2);
    draw_rectangle(23,82+(19*i),197,97+(19*i),false);
   }
  }
}










//score
draw_set_color(-1);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(font2);
draw_text(5,10,string_hash_to_newline("Score: "+string(obj_control.score_round)));



















//time
var xx = -314;
var yy = 94;
draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(x-80-xx,y-25-yy,x+120-xx,y+25-yy,false);
draw_set_font(font2);
draw_set_color(-1);

draw_set_alpha(1);

draw_rectangle(x-80-xx,y-25-yy,x+120-xx,y+25-yy,true);


draw_sprite(spr_time_re_text,0,x+30-xx,y-12-yy);


draw_rectangle_colour(x-45-xx,y+2-yy,x-45+(total_ticks/60)*2.25-xx,y+5-yy,c_gray,c_gray,c_gray,c_gray,false);

if obj_control.countdown_active {
 if obj_control.ticks {
  draw_rectangle_colour(x-45-xx,y+2-yy,x-45+(obj_control.ticks/60)*2.25-xx,y+5-yy,c_blue,c_blue,c_blue,c_blue,false);
 } else draw_rectangle_colour(x-45-xx,y+2-yy,x-45+(obj_control.ticks/60)*2.25-xx,y+5-yy,c_red,c_red,c_red,c_red,false);
} else draw_rectangle_colour(x-45-xx,y+2-yy,x-45+(obj_control.ticks/60)*2.25-xx,y+5-yy,c_purple,c_purple,c_purple,c_purple,false);

draw_set_color(c_white);














//draw bonus seconds
draw_set_halign(fa_center);
draw_set_font(-1);



draw_set_alpha(1);

var osbs = obj_show_bonus_seconds;
if osbs.timer_lifespan {
   
     if string_pos("-",osbs.show_bonus_time) {osbs.show_bonus_time = "+0sec";}

     draw_set_halign(fa_center);
     draw_set_font(-1);
     draw_set_color(ds_list_find_value(obj_control.rotate_colors3_list,0));
     draw_text(osbs.x,osbs.y,string_hash_to_newline(string(osbs.show_bonus_time)));
     
}

draw_set_color(-1);


