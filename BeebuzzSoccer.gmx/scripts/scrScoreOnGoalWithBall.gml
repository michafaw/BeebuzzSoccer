/// scrScoreOnGoalWithBall(goalInstance, ballInstance)

var goalInstance = argument0;
var ballInstance = argument1;

show_debug_message("Gooooooooooooooaaaaaaaallllllllll!");

// Add 1 to score


// Destroy ball and set up to drop a new one
with(ballInstance)
  instance_destroy();
scrRunDelayedScript(scrDropBall, room_speed);
