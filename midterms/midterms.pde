Walker whiteHole = new Walker();
Walker[] circlesArray = new Walker[150];

void setup(){
 
  size(1080, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
 
  
  //for the whiteHole
  whiteHole.red = 255;
  whiteHole.blue = 255;
  whiteHole.green = 255;
  whiteHole.alpha = 255;
  whiteHole.scale = 50;
  whiteHole.position.x = random(-((Window.windowWidth - whiteHole.scale) / 2), (Window.windowWidth - whiteHole.scale) / 2);
  whiteHole.position.y = random(-((Window.windowHeight - whiteHole.scale) / 2), (Window.windowHeight - whiteHole.scale) / 2);
  
  circlesArray = createWalkerArray();
  
  
}



void draw(){
  
  background(0);
 
  for (int i = 0; i < circlesArray.length; i++){
    
    circlesArray[i].render();
    
    
  }
 
  whiteHole.render();
  
  moveToWhiteHole(whiteHole, circlesArray);
  
 
 
}

void moveToWhiteHole(Walker whiteHole, Walker[] circles){
  
 //whiteHole is the target
 //circles need to travel to the whiteHole's position
 
 for (int i = 0; i < circles.length; i ++){
   
    PVector direction = PVector.sub(whiteHole.position, circles[i].position);
    
    //mult(7) to speed up
    circles[i].position.add(direction.normalize().mult(7));
   
 }
  
}

Walker[] createWalkerArray(){
  
   Walker[] otherCircles = new Walker[150];
  
  for (int i = 0; i < 150; i++){
    
    Walker circles = new Walker();
    
    //using gaussian for x coordinate
    float randGaussian = randomGaussian();
    float standardDeviationX = 200;
    float mean = 20;
    
    float x = randGaussian * standardDeviationX + mean;
    
    circles.position.x = x;
    circles.position.y = random(-((Window.windowHeight - circles.scale) / 2), (Window.windowHeight - circles.scale) / 2);
    
    otherCircles[i] = circles;
    
    
  }
  
    return otherCircles;
    
  
}
