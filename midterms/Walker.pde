public class Walker{
  
    public PVector position = new PVector();
    public int red = int(random(256));
    public int blue = int(random(256));
    public int green = int(random(256));
    public int alpha = int(random(50, 101));
    public int scale = int(random(15, 41));
    
  
  void render(){
   
    fill(red, blue, green, alpha);
    noStroke();
    
    circle(position.x, position.y, scale);
    
  }
  
}
