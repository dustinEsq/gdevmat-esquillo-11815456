int timer = 10;
void setup(){
  
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background(255);
  
}

void draw(){
  
  //float gaussian = randomGaussian();
  //println(gaussian);
  
  //float standardDeviation = 100;
  //float mean = 0;
  
  //float x = standardDeviation * gaussian + mean;
  
  //noStroke();
  
  //fill(255, 10);
  //circle(x, 0, 30);
  
 
  
  if (timer > 0){
    timer--;
  }
    
   
  if (timer == 0){
    
     paintSplatter();
     timer = 10;
  }
  
 
  
}

void paintSplatter(){
  
  //used in computing for the x and the thickness
  float randGaussian = randomGaussian();
  
  float standardDeviationX = 300;
  float mean = 0;
  
  //computing the x coordiante of the circle
  float x = standardDeviationX * randGaussian + mean;
  
  //y coordinate of the circle
  float randomY = random(-360, 361);
  
  //for the scale/thickness of the circle
  float randMean = random(1, 11);
  float randStandardDeviation = random(50, 101);
  float thickness = randStandardDeviation *  randGaussian + randMean;
  
  //for the colors of the circle
  int red = int(random(256));
  int blue = int(random(256));
  int green = int(random(256));
  int alpha = int(random(10, 101));
  fill(red, blue, green, alpha);
  
  noStroke();
  circle (x, randomY, thickness);
  
  println(randomY);
  
  
}
