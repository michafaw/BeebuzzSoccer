/// scrKickBall(beeInstance, ballInstance)

var beeInstance = argument0;
var ballInstance = argument1;

var kickMultiplier = 2.0;

show_debug_message("Kick!");

var calculator = instance_create(ballInstance.x, ballInstance.y, objEmpty);

with(calculator) {
  // Ball is kicked in the direction the bee is going, unless it is moving away from the ball
  // Micha Todo -- Add bee moving away from ball code (component of vector a in b)
  
  
  
  //Fix this in the morning!!!
  
  
  /* // "Go in direction of bee" version
  var kickDirection = beeInstance.direction;
  var kickSpeed = beeInstance.speed;
  var kickV = kickSpeed * kickMultiplier;
  motion_add(kickDirection, targetV);
  */
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

// Stop bee velocity
beeInstance.speed = 0;

// Play kick sound (buzz)
scrPlayBuzzSound(beeInstance);
