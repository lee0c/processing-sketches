class star
{
  // properties
  int x;
  int y;
  
  int fade;
  int fadechange;
  
  star (int x, int y, int fade, int fadechange)
  {
    this.x = x;
    this.y = y;
    
    this.fade = fade;
    this.fadechange = fadechange;
  }
  
  void draw()
  {
    colorMode(RGB);
    stroke (255,250,169,fade);
    fill (255,250,169,fade);
    
    rect (x,y,random(1),random(1));
    
    fade = fade + fadechange;
    if (fade>255 || fade<0)
    {
      fadechange *= -1;
    }
  }
}
