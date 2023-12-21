/// @description cards

//
image_speed = 0;

//
var i;
for(i=0;i<8;i++) {c_actions[i] = false;} //card actions

//
card_back = false;     //store back of the card image
card_face = false;     //store front of the card image
card_pos  = false;     //card position - given by stack instance

card_selected = false; //card is selected
card_marked = false;   //card is marked

suit  = false; //suit of the card  (1 = heart, 2 = spade, 3 = diamond, 4 = club)
value = false; //value of the card (ex: 2,3,4 etc Aces are 14 but can be worth 1 if in straight "wheel" hand (A,2,3,4,5)

movex = false; //move to x position - given by stack instance
movey = false; //move to y position - given by stack instance



//before being placed in stack (when stack is being filled)
if !ds_list_empty(obj_control.tmp_list) {

  card_back = ds_list_find_value(obj_control.tmp_color_list,ds_list_size(obj_control.tmp_color_list)-1 );
  card_face = ds_list_find_value(obj_control.tmp_list,ds_list_size(obj_control.tmp_list)-1 );
  
  ds_list_delete(obj_control.tmp_color_list,ds_list_size(obj_control.tmp_color_list)-1);
  ds_list_delete(obj_control.tmp_list,ds_list_size(obj_control.tmp_list)-1);
  
} else {

   //after being placed in stack
   card_back = ds_list_find_value(obj_control.color_list,ds_list_size(obj_control.color_list)-1 );
   card_face = ds_list_find_value(obj_control.list,ds_list_size(obj_control.list)-1 ); 
   card_pos  = ds_list_find_index(obj_control.free_list,1); //check for first free position in list
  
   suit  = card_face div 13+1; //suit 
   value = card_face mod 13+2; //value 
  
   ds_list_delete(obj_control.color_list,ds_list_size(obj_control.color_list)-1);
   ds_list_delete(obj_control.list,ds_list_size(obj_control.list)-1);
  
  }

image_index = card_back;

