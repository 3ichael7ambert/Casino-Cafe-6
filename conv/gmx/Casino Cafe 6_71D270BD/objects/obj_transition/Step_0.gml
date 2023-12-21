/// @description 

if y > room_height { //if below a certain height

  vspeed = -30; //star going up

  if !resetted { //execute restart action (once)
   obj_control.actions[0] = true; //restart
   resetted = true;
  }
  
  
}

  
if y < -1000 { //if above a certain instance destroy
 instance_destroy();
}


