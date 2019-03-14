class sinwave {
  float x;
  float [] y;
  float w;
  float h;
  float full_w;
  
  float variance;
  
  int count = 0;
  
  float waveheight;
  float intercept;
  
  sinwave (int w, int h, int x, int full_w, float variance) {
    this.x = (float)x;
    this.y = new float[w];
    
    this.w = (float)w;
    this.h = (float)h;
    this.full_w = (float)full_w;
    
    this.variance = variance;
  }
  
  void setup() {

  }
  
  void draw() {
    for (int i=0; i<w; i++) {    
      waveheight = h/4 * sin(3.14159/(w/2-1) * (i - (w/4-1))) + h/4;
      
      y[i] = sin(radians((i+count)*variance)) * waveheight + x;
    }
    
    fill(255);
    noStroke();
    for (int i=0; i<w; i++) {
      ellipse(i+((full_w - w)/2), y[i], 1, 1);
    }
    
    count++;  
  }
}
