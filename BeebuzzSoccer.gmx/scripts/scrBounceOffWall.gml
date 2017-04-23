/// scrBounceOffWall(wallInstance, ballInstance)

var wallInstance = argument0;
var ballInstance = argument1;

var minDepenetrationVelocity = 2.0;

var vx = ballInstance.hspeed;
var vy = ballInstance.vspeed;

if(wallInstance.object_index == objBottomWall) {
  ballInstance.vspeed = -1*max(minDepenetrationVelocity, abs(vy));
} else if(wallInstance.object_index == objTopWall) {
  ballInstance.vspeed = max(minDepenetrationVelocity, abs(vy));
} else if(wallInstance.object_index == objLeftWall) {
  ballInstance.hspeed = max(minDepenetrationVelocity, abs(vx));
} else if(wallInstance.object_index == objRightWall) {
  ballInstance.hspeed = -1*max(minDepenetrationVelocity, abs(vx));
} 


