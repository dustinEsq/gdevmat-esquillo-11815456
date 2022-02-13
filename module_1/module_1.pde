//the function that gets called at the very first frame
void setup() {

  //sets the window size to 1280x720
  //P3D makes our environment in 3D
  //if P3D is not present, the environment would be 2d
  size(1280, 720, P3D);

  //adjusts the camera
  camera (0, 0, -(height/2.0 ) / tan(PI*30.0/ 180.0), 0, 0, 0, 0, -1, 0);
}

//the function that gets called every frame
void draw () {

  //display/renders the background of the whole window every frame
  background(130);
  
  drawCartesianPlane();
  
  drawYellowQuadraticFunction();
  drawPurpleLinearFunction();
  
  drawSineWave();
  
}

void drawSineWave(){
  
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  
  float frequency = 5.0;
  float amplitude = 40.0;
  
  for (int x = -300; x <= 300; x += 5){
    
    circle(x, (float)Math.sin(x * frequency) * amplitude, 5);
    
    
  }
  
}

void drawPurpleLinearFunction(){
  
   /*
  f(x) = 5x + 30
  let X be 4, then y = 50
  let X be -5, then y = 5;
  */
  
  color purple = color (128, 0, 128);
  fill(purple);
  noStroke();
  
 for (int x = -200; x <= 200; x++){
    
    circle(x, (5 * x) + 30 , 5);
    
  }
  
}

void drawYellowQuadraticFunction(){
  
   /*
  f(x) = x^2 - 15x - 3;
  let X be 2, then y = -29
  let X be -1, then y = 13
  */
  
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x += 0.1f){
     
     circle(x, ((float)Math.pow(x, 2) + (x * -15) - 3), 5);
     
   }
  
}

void drawCircle(){
  
  color blue = color (0, 0, 255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for ( int x = 0; x <= 360; x++){
    
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
    
  }
  
}

void drawQuadraticFunction(){
  
   /*
  f(x) = x^2 + 2x - 5;
  let X be 2, then y = 3
  let X be -1, then y = -6
  */
  
   color green = color(0, 255, 0);
   fill(green);
   stroke(green);
   
   for (float x = -300; x <= 300; x += 0.1f){
     
     circle(x * 10, ((float)Math.pow(x, 2) + (x * 2) - 5), 5);
     
   }
  
}

void drawLinearFunction(){
  
  /*
  f(x) = x + 2
  let X be 4, then y = 6 (4,6);
  let X be -5, then y = -3 (-5, -3);
  */
  
  color red = color(255, 0, 0);
  fill(red);
  noStroke();
  
  for (int x = -200; x <= 200; x++){
    
    circle(x, x + 2, 5);
    
  }
  
}

void drawCartesianPlane(){
  
  strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  
  line(300, 0, -300, 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10){
    
    line(i, -2, i, 2);
    line(-2, i, 2, i);
    
  } 
  
}
