Walker[] balls = new Walker[10];

void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  balls = createWalkers();
}

void draw(){
  
  background(255);
  
  
  for (int i = 0; i < balls.length; i++){
    
    
    for (int j = 9; j > -1; j--){
      
      if (i != j){
        
        balls[i].applyForce(balls[j].calAttraction(balls[i]));
    
        
      }
      
   }
   
   balls[i].update();
   balls[i].render();
    
 }
  
}

Walker[] createWalkers(){
 
  Walker[] balls = new Walker[10];
  
  for (int i = 0; i < 10; i++){
   
    Walker singleWalker = new Walker();
    
    singleWalker.position.x = random(-500, 500);
    singleWalker.position.y = random(-360, 360);
    singleWalker.mass = random(10, 30);
    singleWalker.scale = singleWalker.mass * 5;
    
    println(singleWalker.mass);
    
    balls[i] = singleWalker;
    
  
    
  }
  
  return balls;
  
  
}
