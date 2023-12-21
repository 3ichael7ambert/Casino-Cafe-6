//

speed = 5 + ((obj_control.ticks / 60) / 6);

if x > room_width+50 or x < 0-50 or y > room_height+50 or y < 0-50 {
  instance_destroy();
}

