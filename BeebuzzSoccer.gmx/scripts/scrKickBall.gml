/// scrKickBall(beeInstance, ballInstance)

var beeInstance = argument0;
var ballInstance = argument1;

var kickMultiplier = 2.0;

show_debug_message("Kick!");

var calculator = instance_create(ballInstance.x, ballInstance.y, objEmpty);

with(calculator) {
  // "Go in direction of vector between them" version
  var kickDirection = point_direction(beeInstance.x, beeInstance.y, ballInstance.x, ballInstance.y);
  var kickSpeed = beeInstance.speed;
  var kickV = kickSpeed * kickMultiplier;
  motion_add(kickDirection, kickV);
}


// Add calculated velocity to ball
with(ballInstance) {
  motion_add(calculator.direction, calculator.speed);
}

// Clean up temp velocity calculator object
with(calculator) {
  instance_destroy();
}

// Add upward velocity to ball (visual only) if the ball is on the ground
if(ballInstance.height == 0)
  ballInstance.bounceV = 2;

// Stop bee velocity
beeInstance.speed = 0;

// Play kick sound (buzz)
scrPlayBuzzSound(beeInstance);
