initialize_game();

if (global.credits >= 10)
    bet10_button.image_single = 1;

if (global.credits >= 5)
    bet5_button.image_single = 1;
    
if (global.credits >= 1)
    bet1_button.image_single = 1;
  


global.is_draw = 0;

// create 5 blank card objects
    
instance_create(5,325,blank_card);
instance_create(165,325,blank_card);
instance_create(325,325,blank_card);
instance_create(485,325,blank_card);
instance_create(645,325,blank_card);