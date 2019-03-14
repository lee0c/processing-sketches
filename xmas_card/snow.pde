class snow {
  // properties
  float x;
  float y;
  
  float rad;
  
  boolean travel;
  
  snow (float x, float y, float rad) {
    this.x = x;
    this.y = y;
    
    this.rad = rad;
  }
  
  void draw() {
    fill(255, 255, 255, 150);
    noStroke();
    ellipse(x, y, rad, rad);
    
    y += random(1);
    
    if (random(10) > 5) {
      travel = true;
    }
    else {
      travel = false;
    }
    
    if (travel) {
      x -= random(.5);
    }
    else {
      x += random(.5);
      travel = true;
    }
    
    if (y>800) {
      y = -10;
    }
  }
}
