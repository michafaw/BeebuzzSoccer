/// scrScoreOnGoalWithBall(goalInstance, ballInstance)

var goalInstance = argument0;
var ballInstance = argument1;

if(!ballInstance.outOfPlay) {
  show_debug_message("Gooooooooooooooaaaaaaaallllllllll!");
  
  // Play cheer sound
  audio_play_sound(choose(sndDKHorrayYay, sndDWooHoo, sndKHorray), 0, false);
  
  // Add 1 to score
  score++;
  
  // Mark this ball as out of play
  ballInstance.outOfPlay = true;
  
  // Set up a drop for a new ball
  scrRunDelayedScript(scrDropBall, room_speed);
}
