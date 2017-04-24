/// scrDropBall()

var newBall = instance_create(irandom_range(350, 450), irandom_range(275, 325), objBall);

// add bounce to ball
newBall.height = 60;
newBall.bounceV = 0;
