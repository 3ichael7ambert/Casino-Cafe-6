// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
// ScriptLanguage:  English_US
// ScriptLicense:   GPL (GNU General Public License)
// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
// ScriptAuthor:    Jorge J. Pareja
//
// ScriptPurpose: This is the main keno room creation script
//                this is where everything should start and end
//                without using the drag and drop GUI for programming!
//                Scripting allmost everything will also help out if
//                we want to port our game to another programming
//                language in the furure.
{
    // Creation Code
    // Set Some Global Variabes
    globalvar Debug;
    global.Debug = 0;
    
    globalvar NumSpotsSelected;
    globalvar Bet;
    globalvar Cash;
    globalvar NumHits;
    globalvar GameSpeed;
    
    globalvar numRandom;
    globalvar userPicks;
    globalvar Ball;
    globalvar Spot;
    globalvar Button;
    
    // used for the payout system!
    globalvar _2_outof_2, _2_outof_3, _2_outof_4, _3_outof_3, _3_outof_4, _3_outof_5;
    globalvar _3_outof_6, _3_outof_7, _4_outof_4, _4_outof_5, _4_outof_6, _4_outof_7;
    globalvar _4_outof_8, _4_outof_9, _4_outof_10, _5_outof_5, _5_outof_6, _5_outof_7;
    globalvar _5_outof_8, _5_outof_9, _5_outof_10, _6_outof_6, _6_outof_7, _6_outof_8;
    globalvar _6_outof_9, _6_outof_10, _7_outof_7, _7_outof_8, _7_outof_9, _7_outof_10;
    globalvar _8_outof_8, _8_outof_9, _8_outof_10, _9_outof_9, _9_outof_10, _10_outof_10;
    
    // keeps track of the spots selected count
   globalvar NumSpotsSelected;
   NumSpotsSelected=0;
    // keeps track of the bet amount
    globalvar Bet;
    Bet=0;
    // keeps track of players cash and sets the starting amount
    globalvar Cash;
    Cash=500;
    global.Cash = 500;
    // keeps track of the speed setting
    globalvar GameSpeed;
    GameSpeed=100; // not yet implimented
    
    /*
      array declerations
     */
    // keeps track of the computer generated balls
    globalvar numRandom;
    numRandom[0]=0;
    // keeps track of user selected balls
    //variable_global_array_set(userPicks,0,0);
     globalvar userPicks;
    userPicks[0]=0;
    
    // the following global arrays are used for our objects
     globalvar Ball;
    Ball[0]=0;
     globalvar Spot;
    Spot[0]=0;
     globalvar Button;
    Button[0]=0;
    
    //ToDo: remove all code that was inserted through the GUI
    //      and place it into scripts for a better learning
    //      experiance.
    
    // Set up the room
    room_speed = 5;
    UpdateInfo();
    
    NumHits = 0;
    // call our main layout script to setup the room
    script_execute(Create_Keno_Layout);
    
    // stop scrolling through the images on the 9 buttons
    BtnStart.image_index = 0;
    BtnStart.image_speed = 0;
    BtnStart.index = 0;
    BtnBetUp.image_index = 1; // this needs to display that it is enabled 
    BtnBetUp.image_speed = 0;
    BtnBetUp.index = 1;
    BtnBetUp.Enabled = 1;     // We need to keep this enabled at start
    BtnBetDown.image_index = 0;
    BtnBetDown.image_speed = 0;
    BtnBetDown.index = 2;
    BtnClearBoard.image_index = 0;
    BtnClearBoard.image_speed = 0;
    BtnClearBoard.index = 3;
    BtnExit.image_speed = 0;
    BtnExit.image_index = 1;
    BtnExit.index = 4;
    BtnOptions.image_index = 0;
    BtnOptions.image_speed = 0;
    BtnOptions.index = 5;
    BtnSaveGame.image_index = 0;
    BtnSaveGame.image_speed = 0;
    BtnSaveGame.index = 6;
    BtnLoadGame.image_index = 0;
    BtnLoadGame.image_speed = 0;
    BtnLoadGame.index = 7;
    BtnNewGame.image_index = 0;
    BtnNewGame.image_speed = 0;
    BtnNewGame.index = 8;
    
    // Now we need to create our button objects, since there are not multiple
    // instances of each button, we can use the GUI for drag and drop
    // coding.  But we will eventualy want to script each button.
    
    //ToDo: Set a game loop to start things off and always return here
    //      within the loop untill the exit button is clicked.
}