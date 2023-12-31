/// @description Draw items

//Draw text
draw_text(430, 40, string_hash_to_newline("Dealer"));
draw_text(15, 15, string_hash_to_newline("Chips: " + string(int_chips)));
draw_text(15, 80, string_hash_to_newline("Round: " + string(int_round)));

//Draw the players score if it is above -1
if (int_playerScore > -1){
    draw_text(318, 530, string_hash_to_newline("Player's Hand: " + string(int_playerScore)));
}

//Draw the dealers score if it is above -1
if (int_dealerScore > -1){
    draw_text(318, 212, string_hash_to_newline("Dealer's Hand: " + string(int_dealerScore)));
}

