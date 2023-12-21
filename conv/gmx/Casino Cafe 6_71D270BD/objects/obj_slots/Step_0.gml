for(i = 0; i <= 3; i++;) { //Checkes each reel's y values, if they are below the screen they jump to the top and get a new symbol.
    if (reel1y[i] >= y1 + size * 3) { //Checks the y values of each symbol.
        reel1y[i] = y1 - size; //Sets the new y value for any spot below the screen.
        reel1[i] = scr_get_item(); //gets a new symbol to be displayed for the spot.
    }
    if (reel2y[i] >= y1 + size * 3) { //repeates above code for each reel
        reel2y[i] = y1 - size;
        reel2[i] = scr_get_item();
    }
    if (reel3y[i] >= y1 + size * 3) {
        reel3y[i] = y1 - size;
        reel3[i] = scr_get_item();
    }
    if (reel4y[i] >= y1 + size * 3) {
        reel4y[i] = y1 - size;
        reel4[i] = scr_get_item();
    }
    if (reel5y[i] >= y1 + size * 3) {
        reel5y[i] = y1 - size;
        reel5[i] = scr_get_item();
    }
}

if (reel1y[0] mod size != 0 or stop1 != 0) { //Check whether or not we should be spinning. - If our y value isn't lined up or our varible to stop says contunue.
    for(i = 0; i <= 3; i++;) { //Repeates for each y value of the reel.
        reel1y[i] += step; //Changes the y value by our step varible.
    }
    if (stop1 == 1) { //When the timer is 1 step away from stoping.
        audio_play_sound(snd_slot_stop, 1, 0); //Plays our sound for stopping.
    }
} else { //When we have stopped.
    for(i = 0; i <= 3; i++;) { //Repeates for each y value of the reel.
        if (reel1y[i] = y1) { //Since our 4 y values of the reel are aren't in order, as they loop, we need to figure out which one is stopped at the top row.
            reel1w[0] = reel1[i]; //Saves the symbol that is located at the top row.
            i = 4; //Set i to 4 to stop the loop (loop repeats while i <= 3).
        }
    }
    for(i = 0; i <= 3; i++;) { //Same as above but for row 2.
        if (reel1y[i] = y1 + size) {
            reel1w[1] = reel1[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) { //Same as above but for row 3.
        if (reel1y[i] = y1 + size * 2) {
            reel1w[2] = reel1[i];
            i = 4;
        }
    }
}

if (reel2y[0] mod size != 0 or stop2 != 0) { //Same as above but for reel2.
    for(i = 0; i <= 3; i++;) {
        reel2y[i] += step;
    }
    if (stop2 == 1) {
        audio_play_sound(snd_slot_stop, 1, 0);
    }
} else {
    for(i = 0; i <= 3; i++;) {
        if (reel2y[i] = y1) {
            reel2w[0] = reel2[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel2y[i] = y1 + size) {
            reel2w[1] = reel2[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel2y[i] = y1 + size * 2) {
            reel2w[2] = reel2[i];
            i = 4;
        }
    }
}

if (reel3y[0] mod size != 0 or stop3 != 0) { //Same as above but for reel3.
    for(i = 0; i <= 3; i++;) {
        reel3y[i] += step;
    }
    if (stop3 == 1) {
        audio_play_sound(snd_slot_stop, 1, 0);
    }
} else {
    for(i = 0; i <= 3; i++;) {
        if (reel3y[i] = y1) {
            reel3w[0] = reel3[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel3y[i] = y1 + size) {
            reel3w[1] = reel3[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel3y[i] = y1 + size * 2) {
            reel3w[2] = reel3[i];
            i = 4;
        }
    }
}

if (reel4y[0] mod size != 0 or stop4 != 0) { //Same as above but for reel4.
    for(i = 0; i <= 3; i++;) {
        reel4y[i] += step;
    }
    if (stop4 == 1) {
        audio_play_sound(snd_slot_stop, 1, 0);
    }
} else {
    for(i = 0; i <= 3; i++;) {
        if (reel4y[i] = y1) {
            reel4w[0] = reel4[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel4y[i] = y1 + size) {
            reel4w[1] = reel4[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel4y[i] = y1 + size * 2) {
            reel4w[2] = reel4[i];
            i = 4;
        }
    }
}

if (reel5y[0] mod size != 0 or stop5 != 0) { //Same as above but for reel5.
    for(i = 0; i <= 3; i++;) {
        reel5y[i] += step;
    }
    if (stop5 == 1) {
        audio_play_sound(snd_slot_stop, 1, 0);
        audio_stop_sound(snd_slots);
    }
} else {
    for(i = 0; i <= 3; i++;) {
        if (reel5y[i] = y1) {
            reel5w[0] = reel5[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel5y[i] = y1 + size) {
            reel5w[1] = reel5[i];
            i = 4;
        }
    }
    for(i = 0; i <= 3; i++;) {
        if (reel5y[i] = y1 + size * 2) {
            reel5w[2] = reel5[i];
            i = 4;
        }
    }
    if (haswon = false) { //Checks whether the varible that states we have stopped running has been set to stopeed.
        scr_check_winnings(); //Runs the script that checks each line to see if we have won.
        haswon = true; //Sets the varible that states whether we stopped to stopped.
    }
}

if (stop1 > 0) {stop1--;} //Checks if the timers for when the reels should stop is bigger than 0 if so it minuses 1.
if (stop2 > 0) {stop2--;}
if (stop3 > 0) {stop3--;}
if (stop4 > 0) {stop4--;}
if (stop5 > 0) {stop5--;}

wrot += 5; //Changes our winning sprite rotation by plus 5.

if (clicked == 1) { //When our varible that states if the spin button has been pressed it true.
    if (haswon == 1 && global.gold >= bet * lines) { //Checks if we are spinning, and if we have enough gold.
        scr_get_payout(); //Gets the payouts for each symbol.
        for (n = 0; n <= 4; n++) { //Repeats for the number of reels and sets the saved reel symbols to nothing.
            row1w[n] = 0;
            row2w[n] = 0;
            row3w[n] = 0;
            row4w[n] = 0;
            row5w[n] = 0;
        }
        for (n = 0; n <= 8; n++) { //Repeats for the number of lines.
            linew[n] = 0; //Sets if they have won to false.
        }
        stop1 = 128 + 16; //The number of steps before reel 1 stops spinning.
        stop2 = 128 + 32; //The number of steps before reel 2 stops spinning.
        stop3 = 128 + 48; //The number of steps before reel 3 stops spinning.
        stop4 = 128 + 64; //The number of steps before reel 4 stops spinning.
        stop5 = 128 + 80; //The number of steps before reel 5 stops spinning.
        haswon = false; //Sets the varible that states if we stopped spinning to false.
        audio_play_sound(snd_slots, 2, 1); //Starts our spinning sound.
        audio_play_sound(snd_slot_start, 1, 0); //plays the pulling of the lever sound.
        global.gold -= bet * lines; //Minuses the amount of gold by the cost to play.
    }
    clicked = 0; //Changes the varbile that states if the spin button was pressed to false;
    if (instance_exists(obj_counter)) { //Checks if the counter exists.
        with (obj_counter) {
            instance_destroy(); //Destorys it.
        }
    }
}

