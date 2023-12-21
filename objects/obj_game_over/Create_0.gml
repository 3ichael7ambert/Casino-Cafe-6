/// @description top 10 and high score saving


//
gravity = 0.25;
depth = -1500;

obj_stack.timer_can_click = 5;  

//
timer_to1 = 30;  
falling = true;

press_r_to_restart = true;
pressed_r = false;

//saving
var i;

//load high score
if file_exists("pick5.sav") {
  var loadfile = file_text_open_read("pick5.sav"); //stores the id of "pick5.sav" in "loadfile" if file exists
  for (i=0;i<10;i++) {ds_list_add(obj_control.hs_list,file_text_read_real(loadfile));} //stores each individual score
  file_text_close(loadfile); //close
}



//add new score to high score list
ds_list_add(obj_control.hs_list,obj_control.score_round); //add last score
ds_list_sort(obj_control.hs_list,false);                  //sort descending

if file_exists("pick5.sav") {
  file_delete("pick5.sav"); //delete before write if file exists
}
  
var savefile = file_text_open_write("pick5.sav"); //store id of file to write to 
for (i=0;i<10;i++) {
  file_text_write_real(savefile,ds_list_find_value(obj_control.hs_list,i)); //write to file
}
   
file_text_close(savefile); //close








