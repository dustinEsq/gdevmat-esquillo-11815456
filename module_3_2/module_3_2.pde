void setup(){
 
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  
}

PVector mousePos(){
 
  float x = mouseX - Window.windowWidth / 2;
  float y = -(mouseY - Window.windowHeight / 2);
  
  return new PVector(x, y);
  
}

void draw (){
  
  background(130);
   
  PVector mouse = mousePos(); //for the red and white part
  PVector mouse2 = mousePos(); //for the handle
  
  mouse.normalize().mult(350);
  mouse2.normalize().mult(70);
   
  //positive part of the saber
  redSaber(0, 0, mouse.x, mouse.y);
  whiteSaber(0, 0, mouse.x, mouse.y);
  
  //negative part of the saber
  redSaber(0, 0, -(mouse.x), -(mouse.y));
  whiteSaber(0, 0, -(mouse.x), -(mouse.y));
  
  //for the handle
  handle(0, 0, mouse2.x, mouse2.y);
  handle(0, 0, -(mouse2.x), -(mouse2.y));
  
  //printing the positive side of the saber
  println("Positive side (red and white): " + mouse.mag() + " ============ " +  "Positive side (Handle): " + mouse2.mag());
  
}

void whiteSaber(float x1, float y1, float x2, float y2){
  
 strokeWeight(7);
 stroke(255, 255, 255);
 line(x1, y1, x2, y2);
  
  
}

void redSaber(float x1, float y1, float x2, float y2){
  
  strokeWeight(14);
  stroke(255, 0 , 0);
  line(x1, y1, x2, y2);
  
  
}

void handle (float x1, float y1, float x2, float y2){
  
  stroke(0, 0, 0);
  strokeWeight(12);
  line(x1, y1, x2, y2);
  
}
