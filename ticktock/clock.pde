class clock {
  // properties
  
  int points;
  int dotsize;
  
  float [] dotsx;
  float [] dotsy;
  
  float rad;
  float centerx;
  float centery;
  float x;
  float y;
  
  int count = 0;
  
  clock (float rad, float centerx, float centery) {
    this.rad = rad;
    this.centerx = centerx;
    this.centery = centery;
    
    if (rad <= 100) {
      this.points = 36;
      this.dotsize = 1;
    } else if (rad <= 200) {
      this.points = 72;
      this.dotsize = 2;
    } else if (rad <= 300) {
      this.points = 120;
      this.dotsize = 3;
    } else if (rad > 300) {
      this.points = 180;
      this.dotsize = 4;
    }
    
    this.dotsx = new float[points];
    this.dotsy = new float[points];
  }
  
  void setup() {   
    for (int i = 0; i < points; i++) {
      x = cos(radians(i*(360/points))) * rad;
      y = sin(radians(i*(360/points))) * rad;
      x += centerx;
      y += centery;
      dotsx[i] = x;
      dotsy[i] = y;
    }
  }
  
  void draw() {
    if (count == points) {
      count = 0;
    }
    
    int cless1, cless2, cless3, cless4;
    cless1 = count - 1;
    cless2 = count - 2;
    cless3 = count - 3;
    cless4 = count - 4;
    
    if (count == 0) {
      cless1 = points-1;
      cless2 = points-2;
      cless3 = points-3;
      cless4 = points-4;
    } else if (count == 1) {
      cless2 = points-1;
      cless3 = points-2;
      cless4 = points-3;
    } else if (count == 2) {
      cless3 = points-1;
      cless4 = points-2;
    } else if (count == 3) {
      cless4 = points-1;
    }
      
    fill(255);
    stroke(255);
    for (int i=0; i<points; i++) {
      ellipse(dotsx[i], dotsy[i], dotsize, dotsize);
    }
    
    stroke(16);
    line(centerx, centery, dotsx[cless4], dotsy[cless4]);
    stroke(32);
    line(centerx, centery, dotsx[cless3], dotsy[cless3]);
    stroke(64);
    line(centerx, centery, dotsx[cless2], dotsy[cless2]);
    stroke(128);
    line(centerx, centery, dotsx[cless1], dotsy[cless1]);
    stroke(255);
    line(centerx, centery, dotsx[count], dotsy[count]);
    
    count++;  
  }
}
