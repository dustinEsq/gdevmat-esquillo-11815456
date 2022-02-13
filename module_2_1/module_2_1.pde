void setup(){
  
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);

  
}

//creates an instance of our walker class here in sketch 
Walker myWalker = new Walker();
Walker myWalkerBiased = new Walker();

  
void draw(){
  
  //int or floor to make it an integer
  //int rng = int(random(5)); //generates random value from 0 to 5
  //println(rng);
  
 
  
  myWalker.randomWalk();
  myWalker.render();
  
  myWalkerBiased.randomWalkBiased();
  myWalkerBiased.render();
  
   
}
