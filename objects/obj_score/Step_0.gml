/// @description 

var i;

if timer_lifespan {
  timer_lifespan -=1;
  
  if timer_color1 {
   timer_color1 -=1;
  } else {
     var last_position = ds_list_find_value(obj_control.rotate_colors1_list, ds_list_size(obj_control.rotate_colors1_list)-1); 
     ds_list_delete(obj_control.rotate_colors1_list, ds_list_size(obj_control.rotate_colors1_list)-1); 
     ds_list_insert(obj_control.rotate_colors1_list,0,last_position);

     timer_color1 = 5;
    }
  
  if timer_color2 {
   timer_color2 -=1;
  } else {
  
     var last_position = ds_list_find_value(obj_control.rotate_colors2_list, ds_list_size(obj_control.rotate_colors2_list)-1); 
     ds_list_delete(obj_control.rotate_colors2_list, ds_list_size(obj_control.rotate_colors2_list)-1); 
     ds_list_insert(obj_control.rotate_colors2_list,0,last_position);
     
     timer_color2 = 20;
    }
  
}



