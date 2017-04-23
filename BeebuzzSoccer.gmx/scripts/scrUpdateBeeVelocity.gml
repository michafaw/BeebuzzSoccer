///scrUpdateBeeVelocity(beeInstance)

var beeInstance = argument0;

var targetMultiplier = 1.0;
var ballMultiplier = 1.0;
var avoidTeammateMultiplier = 1.0;
var avoidOpponentMultiplier = 1.0;

with(beeInstance) {
  // Create temporary object to add motion info to
  var calculator = instance_create(x, y, objEmpty);
  
  // Target
  var target = instance_find(objTarget, 0);
  if(point_distance(x, y, objTarget.x, objTarget.y) > 50){
    with(calculator) {
      var targetDirection = point_direction(x, y, target.x, target.y);
      var targetDistance = point_distance(x, y, target.x, target.y);
      var targetV = clamp(targetDistance * targetMultiplier, 0, beeInstance.maxDeltaVelocity);
      motion_add(targetDirection, targetV);
    }
  }
  // Nearest Ball 
  
  
  // Avoid Teammates
  
  
  // Avoid Opponents
  
  
  // Clamp delta
  calculator.speed = clamp(calculator.speed, 0, maxDeltaVelocity);
  
  // Add to current velocity
  motion_add(calculator.direction, calculator.speed);
  
  // Clamp velocity
  speed = clamp(speed, 0, maxVelocity);
}
