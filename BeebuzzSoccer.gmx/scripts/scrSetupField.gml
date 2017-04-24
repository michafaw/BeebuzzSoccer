/// scrSetupField()

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

// drop ball
with(objBall)
  instance_destroy();
scrRunDelayedScript(scrDropBall, room_speed);
