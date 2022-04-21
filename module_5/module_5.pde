Walker[] balls = new Walker[10];
PVector wind = new PVector(0.15, 0);
PVector gravity = new PVector(0, -0.4);

void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  balls = createBalls();
  
}

void draw(){
  
 background(80); 
 
 for (int i = 0; i < balls.length; i++){
   
   balls[i].render();
   balls[i].update();
   balls[i].applyForce(wind);
   balls[i].applyForce(gravity);
   balls[i].bounce();
   
 }
  
}

Walker[] createBalls(){
  
  Walker[] ballsArray = new Walker[10];
  
  float massValue = 10;
  
  for (int i = 0; i < 10; i ++){
    
    Walker ball = new Walker();
    
    //mass values from 10 to 1
    ball.mass = massValue;
    
    //scale of the ball depending on its mass (mass * 15)
    ball.scale = ball.mass * 15;
    
    //starting position of the ball
    ball.position.x = -500;
    ball.position.y = 200;
    
    //to check the mass value - descending order
    println(massValue);
   
    ballsArray[i] = ball;
    
    massValue--;
    
    
  }
  
  return ballsArray;
  
}
