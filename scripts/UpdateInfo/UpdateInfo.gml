function UpdateInfo() {
	// ScriptCopyright: 2008 Jorge Joaquin Pareja, japreja@users.sourceforge.net
	// ScriptLanguage:  English_US
	// ScriptLicense:   GPL (GNU General Public License)
	// LicenseURL:      http://www.gnu.org/copyleft/gpl.html
	// ScriptAuthor:    Jorge J. Pareja
	// ScriptName:      UpdateInfo.gml
	// ThanksTo:        
	//
	{
	    // this script updates the Title bar and the text
	    // that displays in the game window
	    //room_caption = "Moe Keno V1.1 - Bet: $" + string(global.Bet) + " - Spots: " + string(global.NumSpotsSelected) + " - Hits: " + string(global.NumHits) + " - Cash: $" + string(global.Cash);
	    //screen_redraw();
	    // 352x177 (start location for cash abd bet text
	    draw_set_font(-1);
	    draw_text(352, 177,string_hash_to_newline("Cash: " + string(global.Cash)));
    
	    // 10x132 (start location for selection, and hits
	    draw_text(10, 136, string_hash_to_newline("Selected: " + string(global.NumSpotsSelected)));
    
	    draw_text(150, 136, string_hash_to_newline("Bet: " + string(global.Bet)));
    
	    //260x128
	  //  draw_text(260, 136, "Hits: " + string(NumHits));
	   // screen_refresh();
	}



}
