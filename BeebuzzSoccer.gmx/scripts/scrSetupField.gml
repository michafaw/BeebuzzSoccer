/// scrSetupField()

// Reset score
score = 0;

// Add grass
with(objGrass)
  instance_destroy();
var numGrassObjects = 40;
for(var i = 0; i < numGrassObjects; i++)
  instance_create(irandom_range(0, room_width), irandom_range(0, room_height), objGrass);

// Add target
with(objTarget)
  instance_destroy();
instance_create(175, 300, objTarget);

// Add friendly bees
with(objBee)
  instance_destroy();
bee[0] = instance_create(150, 100, objBee);
bee[1] = instance_create(300, 150, objBee);
bee[2] = instance_create(100, 300, objBee);
bee[3] = instance_create(150, 500, objBee);
bee[4] = instance_create(300, 450, objBee);
bee[5] = instance_create(100, 100, objBee);
bee[6] = instance_create(100, 500, objBee);

// Reset timer on objFieldControl
with(objFieldControl) {
  alarm[0] = room_speed*GAME_LENGTH;
}

// Drop ball
with(objBall)
  instance_destroy();
scrRunDelayedScript(scrDropBall, room_speed);

// Ambient chirp sounds
audio_stop_sound(sndMorningChirps);
audio_play_sound(sndMorningChirps, 0, true);
