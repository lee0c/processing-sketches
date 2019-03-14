sinwave [] sines = new sinwave[10];

int w = 1600;
int h = 800;

void setup() {
  size(1600, 800);
  
  for (int i=0; i<10; i++) {
    sines[i] = new sinwave(w-100, h-100, h/2, w, random(1.5) + .1);
  }
}

void draw() {
  background(0);
  
  for (int i=0; i<10; i++) {
    sines[i].draw();
  }  
}
