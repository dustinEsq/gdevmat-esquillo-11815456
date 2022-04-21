Walker[] balls = new Walker[8];
PVector acceleration = new PVector(0.2, 0);

void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  balls = createBalls();
  
  
}

void draw(){
  
 background(80); 
 
  //to visualize the middle of the screen
  stroke(0, 0, 0);
  strokeWeight(10);
  line(0, -360, 0, 360);
  
 
 for (int i = 0; i < balls.length; i++){
   
   //PVector gravity = new PVector(0,-0.15 * balls[i].mass);
 
   if (mousePressed == true ){
     
     balls[i].position.x = -500;
     balls[i].position.y = (Window.windowHeight / 8) * (i - 4);
     acceleration.x = 0.2;
     acceleration.y = 0;
     balls[i].velocity.x = 0;
     balls[i].velocity.y = 0;
     
   }

   //Friction = -1 * mew * N * v
   //the x positon of the balls is less than the middle section of the screen
   if (balls[i].position.x < 0){
     
     float mew = 0.01f; 
     float normal = 1;
     float frictionMagnitude = mew * normal;
     PVector friction = balls[i].velocity.copy(); 
     friction.mult(-1);
     friction.normalize();
     friction.mult(frictionMagnitude);
     balls[i].applyForce(friction);
     
   }
   
   //the x position of the balls is more than the middle section of the screen
   else if (balls[i].position.x > 0){
     
     float mew = 0.4f;  
     float normal = 1;
     float frictionMagnitude = mew * normal;
     PVector friction = balls[i].velocity.copy(); 
     friction.mult(-1);
     friction.normalize();
     friction.mult(frictionMagnitude);
     balls[i].applyForce(friction);
    println(balls[0].position.x);
    
   }
   
   balls[i].applyForce(acceleration);
   balls[i].render();
   balls[i].update();
  
   
 }
 
 
}

Walker[] createBalls(){
  
  Walker[] ballsArray = new Walker[8];
  
  int massValue = 10;
  int scaleValue = 15;
  
  for (int i = 7; i > -1; i--){
    
    Walker ball = new Walker();
    
    ball.mass = massValue;
    
    ball.scale = scaleValue * 2;
    
    //starting position of the ball
    ball.position.x = -500;
    ball.position.y = (Window.windowHeight / 8) * (i - 4);
    //ball.position.y = -360;
    
    //println(ball.position.y);
   
    ballsArray[i] = ball;
    
    //increasing mass
    massValue += 2;
    
    //increasing scale
    scaleValue += 5;
    
    
  }
  
  return ballsArray;
  
}
