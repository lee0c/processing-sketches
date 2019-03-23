class glow
{
  // properties
  
  int x;
  int y;
  int r;
  
  glow (int x, int y, int r)
  {
    this.x = x;
    this.y = y;
    this.r = r;
    
  }
  
  void draw()
  {
    ellipseMode(CENTER);
    
    for (int i=0;i<20;i++)
    {
      stroke(255,250,169,i*.75);
      fill(255,250,169,i*.75);
      
      ellipse(x,y,r-i*5,r-i*5);
    } 
  }
}
