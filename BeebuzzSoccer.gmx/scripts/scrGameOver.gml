/// scrGameOver()
// Ends the game, populates the global score info, and returns to the title screen

global.lastGameScore = score;
room_goto(roomTitle);
