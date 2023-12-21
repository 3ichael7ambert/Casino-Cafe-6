/// @description 

if timer_star {
  timer_star -=1;
} else {
   repeat(amount) {
    ds_list_add(obj_control.direction_list,choose(irandom_range(0,359)));
    var star_inst = instance_create(room_width/2,room_height/2,obj_star);
    timer_star = irandom_range(1,2);
   }
  }

