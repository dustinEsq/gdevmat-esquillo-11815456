public class Walker{
  
    public PVector position = new PVector();
    public PVector velocity = new PVector();
    public PVector acceleration = new PVector();
    
    public float velocityLimit = 10;
    public float scale = 1;
    public float mass = 1;
    
    //random colors
    public int red = int(random(256));
    public int blue = int(random(256));
    public int green = int(random(256));
    public int alpha = int(random(150, 201));
    
  
  public Walker(){
    
    
  }
  
  // Newton's second law of motion
  public void applyForce(PVector force){
    
   PVector f = PVector.div(force, this.mass);
   this.acceleration.add(f); // force accumulation
   
    
  }
  
  public void update(){
    
    this.velocity.add(this.acceleration); // velocity accumulation
    this.velocity.limit(velocityLimit);
    this.position.add(this.velocity);
    this.acceleration.mult(0); // resets accelearation every frame
    
  }
  
  public void render(){
   
    fill(red, blue, green, alpha);
    noStroke();
    
    circle(position.x, position.y, scale);
    
  }
  
  public void bounce(){
    
    if ((position.x >= Window.right) || ( position.x <= Window.left)){
    
        this.velocity.x *= -1;
    
    }
  
    if (position.y >= Window.top ||  position.y <= Window.bottom){
    
       this.velocity.y *= -1; 
    
    }
    
    
  }
  
}
