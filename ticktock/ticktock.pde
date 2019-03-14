clock [] tenclocks = new clock[10];

int w = 1600;
int h = 800;
float boundary = 0;

void setup() {
  size(1600, 800);
  background(0);
  frameRate(60);
  
  for (int i=0; i<10; i++) {
    float maxrad;
    if (w <= h) {
      maxrad = w/2 - boundary*2;
    } else {
      maxrad = h/2 - boundary*2;
    }
    float newrad = random(maxrad) + boundary;
    tenclocks[i] = new clock(newrad, (random(w - newrad*2) + newrad), (random(h - newrad*2) + newrad)); 
  }
  
  for (int i=0; i<10; i++) {
    tenclocks[i].setup();
  }
}

void draw() {
  background(0);
  
  for (int i=0; i<10; i++) {
    tenclocks[i].draw();
  }
}
