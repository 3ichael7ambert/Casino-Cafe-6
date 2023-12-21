/// @description "Pick 5 Poker" Arcade Solitaire by Mark-VIII

randomize(); // randomize seed                                          
//options
star_field = false; //if false background will be used
//arrays
var i;
for(i=0;i<14;i++) {actions[i] = false;} //actions array for performing certain actions - see control_actions script executed in obj control step event 
for(i=0;i<5;i++)  {hand[i] = false;}    //array containing ids of cards selected (values,suits can be accesed from there - used by check hand script)
for(i=0;i<11;i++) {HA[i] = false;}      //Hand Array of poker hands (high cards, pair, two pair etc.)
for(i=0;i<11;i++) {HM[i] = 0;}          //number of each hands made

name[0] = "High Card";  name[1] = "Pair"; name[2] = "Two Pair"; name[3] = "Three of a Kind"; name[4] = "Straight"; name[5] = "Flush"; //name array
name[6] = "Full House"; name[7] = "Four of a Kind"; name[8] = "Straight Flush"; name[9] = "Royal Flush"; name[10] = "Five of a Kind";
  
SA[0]=1000;SA[1]=2500;SA[2]=5000;SA[3]=7500;SA[4]=10000;SA[5]=12500;SA[6]=15000;SA[7]=25000;SA[8]=30000;SA[9]=40000;SA[10]=50000; //Score Array
TA[0]=45;TA[1]=90;TA[2]=150;TA[3]=210;TA[4]=540;TA[5]=330;TA[6]=390;TA[7]=420;TA[8]=720;TA[9]=780;TA[10]=640; //Time Add array (add time in ticks)
RN[0]=nt0;RN[1]=nt1;RN[2]=nt2;RN[3]=nt3;RN[4]=nt4;RN[5]=nt5;RN[6]=nt6;RN[7]=nt7;       //Round Notes
for(i=0;i<array_length_1d(TA);i++) {SE[i] = TA[i] / 60;} //SEconds array - convert in seconds - for added seconds object

//lists
list = ds_list_create();             // main list of cards - used by the stack - will be filled later (from tmp_list)
tmp_list = ds_list_create();         // temporary list - use to fill main list
color_list = ds_list_create();       // used in assigning colors to each cards - empty at first will be filled later during the deck fill phase
tmp_color_list = ds_list_create();   // temporary color list - use to fill color_list
xpos_list = ds_list_create();        // list of x positions - from left to right
ypos_list = ds_list_create();        // list of y positions - up - down
free_list = ds_list_create();        // list of positions that are free; 0 indicates a position is occupied - 1 that a position is not occupied
hand_list = ds_list_create();        // list containing selected cards    
rotate_colors1_list = ds_list_create();   //lists containing colors for drawing flashing text      
rotate_colors2_list = ds_list_create();   //
rotate_colors3_list = ds_list_create();   //
direction_list = ds_list_create();   //used by stars generator and "star" instances
hs_list = ds_list_create();          //create high score list

//variables
max_seconds = 60;          //number of max seconds
ticks = max_seconds * 60;  //time
score_round = 0;           //game score
cards_in_tableau = 0;      //current no of cards in tableau -used in determining when round complete (when 0)
countdown_active = false;  //ticks/time countdown is paused when refilling stack
timer_can_click = 15;      //used for determing when user can click
timer_timeup = 20;         //after ticks reaches 0 star countding down, when at 0 game over
draw_message = true;       //draw message; instructions, version number etc. at beginning

//execute actions at start
actions[1] = true;         // fill lists
actions[2] = true;         // instances create
actions[3] = true;         // time countdown
actions[4] = true;         // can_click check
actions[5] = true;         // during game - unselect all when pressing middle mouse button

