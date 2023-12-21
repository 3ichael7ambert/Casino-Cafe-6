/// @description stack - creates cards instances

//
var i;
for(i=0;i<5;i++) {s_actions[i] = false;} //stack actions array

//
depth = 200;                // set depth
image_speed = 0;          // set image speed
mask_index = upleft_mask; // set mask index

//
timer_can_click = 5; //determine when you can( when at 0) and can't click/make a move.
timer_layout = 5;    //timer (similar to alarm) for the initial phase of placing cards
timer_layout2 = 15;  //wait after stack filled

refill_no = 0;  //how many refill so far (initial fill doesn't count)

//stack_action at start
s_actions[0] = true;

