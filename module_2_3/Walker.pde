public class Walker{
  
 public float x;
 public float y;
 public float thiccness;
 public float red = 255;
 public float blue = 255;
 public float green = 255;
 public float tx = 0, ty = 10000;
 public float tScale = 0; //for thiccness/scale of the circle
 public float tRed = 0;
 public float tBlue = 0;
 public float tGreen = 0;
 
public void render(){
  
   //filling the circle
   fillCircle();
   
   //for the thiccness of the circle
   thiccness = map(noise(tScale), 0, 1, 5, 150);
   
   circle(x, y, thiccness);
   
   tScale += 0.01f;
   
   //println(thiccness);
   
 }
 
 public void fillCircle(){
   
   red = map(noise(tRed), 0, 1, 0, 255);
   blue = map(noise(tBlue), 0, 1, 0, 255);
   green = map(noise(tGreen), 0, 1, 0, 255);
   
   fill (red, blue, green, 100);
  
   tRed += 0.10f;
   tBlue += 0.15f;
   tGreen += 0.20f;
  
   noStroke();
   
   println("red: " + red + " blue: " + blue + " green: " + green );
   
 }
 
 public void perlinWalk(){
   
   x = map(noise(tx), 0, 1, -640, 640);
   y = map(noise(ty), 0, 1, -360, 360);
   
   tx += 0.01f;
   ty += 0.01f;
   
   
   
 }
  
}
