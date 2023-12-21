/// @description 

var i;

if timer_lifespan {
  timer_lifespan -=1;
  
  if timer_color3 {
   timer_color3 -=1;
  } else {
     var last_position = ds_list_find_value(obj_control.rotate_colors3_list, ds_list_size(obj_control.rotate_colors3_list)-1); 
     ds_list_delete(obj_control.rotate_colors3_list, ds_list_size(obj_control.rotate_colors3_list)-1); 
     ds_list_insert(obj_control.rotate_colors3_list,0,last_position);

     timer_color3 = 5;
    }
  
  
  
}



