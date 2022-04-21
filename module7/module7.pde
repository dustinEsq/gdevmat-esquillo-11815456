Liquid ocean = new Liquid(0, -100, Window.right, Window.bottom, 0.1f);
Walker[] walkers = new Walker[10];
 
void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  walkers = createWalkers();
  
}

void draw(){
  
 background(255); 
 
 ocean.render();

 for (int i = 0; i < walkers.length; i++){
  
   walkers[i].render();
   walkers[i].update();
   
   PVector gravity = new PVector(0, -0.15 * walkers[i].mass);
   walkers[i].applyForce(gravity);
   
  PVector wind = new PVector(0.1, 0);
  walkers[i].applyForce(wind);
   
   if (ocean.isCollidingWith(walkers[i])){
   
    for (int j = 0; j < walkers.length; j++){
    
     PVector dragForce = ocean.calDragForce(walkers[j]);
     walkers[j].applyForce(dragForce);
    
    }
     
  }
   
   if (walkers[i].position.y <= Window.bottom){
  
   walkers[i].position.y = Window.bottom;
   walkers[i].velocity.y *= -1;
   
   }
   
   if (walkers[i].position.x >= Window.right){
     
    walkers[i].position.x = Window.right;
    walkers[i].velocity.x *= -1;
     
   }
   
 }
 
}

Walker[] createWalkers(){
 
  Walker[] balls = new Walker[10];
  
  int spacing = 20;
  
  for (int i = 0; i < 10; i++){
   
    Walker singleWalker = new Walker();
    
    singleWalker.position.x = ((Window.windowWidth / 10) * (i - 5)) + spacing;
    singleWalker.position.y = 300;
    singleWalker.mass = random(2, 8);
    singleWalker.scale = singleWalker.mass * 10;
    
    balls[i] = singleWalker;
    
    
  }
  
  return balls;
  
  
}
