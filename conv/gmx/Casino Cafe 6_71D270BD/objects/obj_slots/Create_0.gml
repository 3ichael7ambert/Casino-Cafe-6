size = sprite_height; //The size of the symbols, determins the spacing between each symbol (sprites must be square).
x1 = 384; //The left most x value, to start drawing the slot machine.
y1 = 128; //The y value of the top of the visible area (once a item gets to the bottom it will be above this value by your sprite height).
step = 32; //The distance the reels will move every step (has to be a whole number, and divide into the sprite height evenly).
symbols = 10; //The number of symbols for this perticular slot machine (shouldn't be more than sub images in your sprtite).
payback = 92; //The percent of money the player will recive back (will be within 1% of this value after 1m spins, anything can happen in a few pulls)

lines = 1; //Current amount of lines being played.
maxlines = 9; //The maxium amount of lines this machine will allow.

minbet = 50; //The minimum ammount to bet per line.
bet = minbet; //Current bet.
maxbet = 250 //The maximum ammount to bet per line (must be divisible by the minbet evenly).

global.gold = global.money; //Current amount of gold.

showlines = 1; //Varible that states whether or not to show the lines.
clicked = 0; //Varible that gets set to ture when the spin button is pressed.

stop1 = 0; //A timer that states when reel1 should stop at its next point (point is when it is lined up on the screen).
stop2 = 0; //A timer that states when reel2 should stop at its next point
stop3 = 0; //A timer that states when reel3 should stop at its next point
stop4 = 0; //A timer that states when reel4 should stop at its next point
stop5 = 0; //A timer that states when reel5 should stop at its next point
wrot = 0; //A varible that will incrase by 5 every step used to determine the rotation of the winning sprite
haswon = true; //A varible that states whether we are spinning or not (doesn't mean we auctualy won something)

randomize(); //Randomizes the rng.
scr_get_payout(); //Gets the payout for each win.

for(i = 0; i <= 3; i++;) { //Creates the y varibles for each reel each reel has 4 y varibles.
    reel1y[i] = y1 + i * size;
    reel2y[i] = y1 + i * size;
    reel3y[i] = y1 + i * size;
    reel4y[i] = y1 + i * size;
    reel5y[i] = y1 + i * size;
}

for(i = 0; i <= 3; i++;) { //Picking random values that represent image index for each of the 4 spots on every reel (uses real casino tactics, each symbol has an equal chance of being shown in the begining, so players see more "rare" symbols).
    reel1[i] = round(random(symbols - 1));
    reel2[i] = round(random(symbols - 1));
    reel3[i] = round(random(symbols - 1));
    reel4[i] = round(random(symbols - 1));
    reel5[i] = round(random(symbols - 1));
}

for (n = 0; n <= 4; n++) { //A value of 1 or 0 stating whether a spot on the reel was involved in a win (so we can display the winning animation).
    row1w[n] = 0;
    row2w[n] = 0;
    row3w[n] = 0;
    row4w[n] = 0;
    row5w[n] = 0;
}

for (n = 0; n <= 8; n++) { //A value of 1 or 0 stating whether a line has won or not.
    linew[n] = 0;
}

