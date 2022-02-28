class Walker{
   
  public PVector position = new PVector();
  public PVector speed = new PVector(4, 6);
  
  void render(){
   
    int red = int(random(256));
    int blue = int(random(256));
    int green = int(random(256));
    int alpha = int(random(50, 101));
    fill(red, blue, green, alpha);
    
    println(alpha);
    
    noStroke();
    circle(position.x, position.y, 30);
    
  }
  
 public void moveAndBounce(){
    
    position.add(speed);
    
    if ((position.x > Window.right) || ( position.x < Window.left)){
    
        speed.x *= -1;
    
    }
  
    if (position.y > Window.top ||  position.y < Window.bottom){
    
       speed.y *= -1; 
    
    }
    
    
  }
  
  public void randomWalk(){
    
    int rng = int(random(8));
    
    if(rng == 0){ //up
     
      position.add(0, 5);
      
    }
    
    else if (rng == 1){ //down
      
     position.sub(0, 5);
      
    }
    
    else if (rng == 2){ //right
      
     position.add(5, 0);
      
    }
    
    else if (rng == 3){ //left
      
     position.sub(5, 0);
      
    }
    
    else if (rng == 4){ //northeast
      
      position.add(5, 5);
      
    }
    
     else if (rng == 5){ //southeast
      
      position.sub(0, 5);
      position.add(5, 0);
      
    }
    
     else if (rng == 6){ //northwest
      
      position.add(0, 5);
      position.sub(5, 0);
      
    }
    
     else if (rng == 7){ //southwest
      
      position.sub(5, 5);
      
    }
    
  }
  
}
