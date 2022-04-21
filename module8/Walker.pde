public class Walker{
  
    public PVector position = new PVector();
    public PVector velocity = new PVector();
    public PVector acceleration = new PVector();
    
    public float velocityLimit = 10;
    public float scale = 1.0;
    public float mass = 1.0;
    
    //random colors
    public int red = int(random(256));
    public int blue = int(random(256));
    public int green = int(random(256));
    public int alpha = int(random(150, 201));
    
    public float g = 1.0;
    
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
    
    if (position.x >= Window.right){
    
        this.position.x = Window.right;
        this.velocity.x *= -1;
    
    }
  
    if (position.y <= Window.bottom){
    
       this.position.y = Window.bottom;
       this.velocity.y *= -1; 
    
    }
    
    
  }
  
  public PVector calAttraction(Walker walker){
    
   PVector force = PVector.sub(this.position, walker.position); //direction
   float distance = force.mag();
   force.normalize();  //normalize to accurately get direction
   
   //solves divided by 0
   //and divided by really small values
   distance = constrain(distance, 5, 25);
   
   float strength = (this.g * this.mass * walker.mass) / (distance * distance);
   force.mult(strength);
   return force;
    
  }
  
}
