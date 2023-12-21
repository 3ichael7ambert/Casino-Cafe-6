/// @description star object

var star_dir = ds_list_find_value(obj_control.direction_list,0);
motion_set(star_dir,10);
ds_list_delete(obj_control.direction_list,0);

depth = 601;
image_index = irandom_range(0,15);
image_speed = 0;


var random_chance_method = true;

//method one
if random_chance_method {
  var one_out_of_x_chance = 1000000; //choose number between 0 and up ex: 10000 means there's 1 in 10000 chance of event occuring 
  var number_chosen = choose(irandom_range(0,one_out_of_x_chance));
  if number_chosen == one_out_of_x_chance {
   sprite_index = spr_cards;
   image_xscale = 0.4;
   image_yscale = 0.4;
  } else {
     image_xscale = 2;
     image_yscale = 2;
    }
}

//method two  
else {  
  var percentage = 1;    //choose number between 0 (no chance of occuring) and 100 (guarenteed) ex: 33 = 1 out of 3 chance
  var number_chosen = choose(irandom_range(0,100));
  if number_chosen < percentage {
   sprite_index = spr_cards;
   image_xscale = 0.4;
   image_yscale = 0.4;
  } else {
     image_xscale = 2;
     image_yscale = 2;
    }
}

