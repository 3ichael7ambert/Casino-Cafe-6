/// @description 


//
obj_stack.timer_can_click = 5; //disable clicking during action


//begin fall
if falling {

  if y < 15 {
   
  } else {
     gravity = 0;
     speed = 0;
   
     press_r_to_restart = true; //can press when stop stopped
     falling = false; //stop
    }
    
    
}



if press_r_to_restart {
 
 if !pressed_r {
  if keyboard_check_pressed(ord("R")) {
   instance_create(0,0-room_height,obj_transition);
   pressed_r = true; //can only press once
  }
 }

}

