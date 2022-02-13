class Walker{
  
  float x;
  float y;
  
  
  
  void render(){
   
    int red = int(random(256));
    int blue = int(random(256));
    int green = int(random(256));
    int alpha = int(random(50, 101));
    fill(red, blue, green, alpha);
    
    println(alpha);
    
    noStroke();
    circle(x, y, 30);
    
  }
  
  void randomWalk(){
    
    int rng = int(random(8));
    
    
    if(rng == 0){ //up
     
      y+=5;
      
    }
    
    else if (rng == 1){ //down
      
     y-=5;
      
    }
    
    else if (rng == 2){ //right
      
     x+=5;
      
    }
    
    else if (rng == 3){ //left
      
     x-=5;
      
    }
    
    else if (rng == 4){ //northeast
      
      y+=5;
      x+=5;
      
    }
    
     else if (rng == 5){ //southeast
      
      y-=5;
      x+=5;
      
    }
    
     else if (rng == 6){ //northwest
      
      y+=5;
      x-=5;
      
    }
    
     else if (rng == 7){ //southwest
      
      y-=5;
      x-=5;
      
    }
    
  }
  
  void randomWalkBiased(){
    
     int rng = int(random(1, 101));
     
     if ( rng >= 1 && rng <= 30){ //left biased
       
        x-=5;
       
     }
     
     else if (rng >= 31 && rng <= 40){ //up
       
        y+=5;
       
     }
     
     else if (rng >= 41 && rng <= 50){ //down
       
        y-=5;
       
     }
     
     else if (rng >= 51 && rng <= 60){ //right
     
        x+=5;
       
     }
     
     else if (rng >= 61 && rng <= 70){ //northeast
     
        y+=5;
        x+=5;
     
     }
     
     else if (rng >= 71  && rng <= 80){ //southeast
     
        y-=5;
        x+=5;
     
     }
     
     else if (rng >= 81 && rng <= 90){ //northwest
     
        y+=5;
        x-=5;
     
     }
     
     else if (rng >= 91 && rng <= 100){ //southwest
       
        y-=5;
        x-=5;
       
     }
    
  }
  
}
