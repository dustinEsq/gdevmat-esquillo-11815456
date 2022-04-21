Walker[] circlesArray = new Walker[100];

void setup(){
 
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  circlesArray = createWalkerArray();
  
}

/* Vector Motion 101

  1. Add Velocity to position
  2. Draw the object to position
 
*/

void draw(){
  
  background(80);
  
   for (int i = 0; i < circlesArray.length; i++){
    
    circlesArray[i].render();
    
  }
  
  println(mousePos().x + " " + mousePos().y);
  moveToMouseCursor(circlesArray);
  
  
}


void moveToMouseCursor(Walker[] circles){
  
   PVector mouse = mousePos();
   
   for (int i = 0; i < circles.length; i ++){
   
     //get the mouse direction
    PVector direction = PVector.sub(mouse, circles[i].position);
    
    //normalize the direction -> assign the direction to the acceleration
    //-> multiply it to 0.2
    circles[i].acceleration = direction.normalize().mult(0.2);
    
    circles[i].update();
   
 }
  
  
}

PVector mousePos(){
 
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  
  return new PVector(x, y);
  
}

Walker[] createWalkerArray(){
  
   Walker[] otherCircles = new Walker[100];
  
  
  for (int i = 0; i < 100; i++){
    
    Walker circles = new Walker();
    
    
    //random position
    circles.position.x = random(-((1080 - circles.scale) / 2), (1080 - circles.scale) / 2) ;
    circles.position.y = random(-((680 - circles.scale) / 2), (680 - circles.scale) / 2);
    
    
    otherCircles[i] = circles;
    
    
  }
  
    return otherCircles;
    
  
}
